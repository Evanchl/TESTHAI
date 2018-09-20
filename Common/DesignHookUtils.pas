{******************************************************************************
TFrom DesignHook接口的实现.

wr960204 武稀松
2007.9.10

2013.6.3 加入SetDesignState适应新的Delphi.
******************************************************************************}
unit DesignHookUtils;

interface
uses
  Windows, SysUtils, Messages, Classes, Controls, Forms, ComObj, ActiveX,
  Graphics;

//开始设计.设计整个窗口里,以窗口为Owner的控件
function BeginDesign(Form: TCustomForm): IDesignerHook; overload;
//开始设计.设计窗口里,Root控件为Owner的控件
function BeginDesign(Form: TCustomForm; Root: TWinControl): IDesignerHook; overload;
//终止设计
procedure EndDesign(Form : TCustomForm);

implementation

//点到区的转化
function PointToRect(pt1, pt2: TPoint): TRect;
begin
  if pt1.X < pt2.X then
  begin
    Result.Left := pt1.X;
    Result.Right := pt2.X;
  end
  else
  begin
    Result.Left := pt2.X;
    Result.Right := pt1.X;
  end;
  if pt1.Y < pt2.Y then
  begin
    Result.Top := pt1.Y;
    Result.Bottom := pt2.Y;
  end
  else
  begin
    Result.Top := pt2.Y;
    Result.Bottom := pt1.Y;
  end;
end;

const
  GrabHandleSize    = 4;
type
  TDesignerHook = class;

  TCrackComponent = class(TComponent);
  TCrackControl = class(TControl);

  //管理FrameSize的.免得要遍历释放每个FrameSize
  TGrabHandleManager = class(TComponent)
  private
    FDesigner: TDesignerHook;
  public
    constructor Create(ADesigner: TDesignerHook);
  end;

  //IDesignerHook的实现部分
  TDesignerHook = class(TInterfacedObject, IDesignerNotify, IDesignerHook)
  private
    FGrabHandleManager: TGrabHandleManager;
    FForm: TCustomForm;
    FRoot: TWinControl;
    FControls: TList;
    FDraggingControl: TControl;
    FDragging: Boolean;
    FBeforDragPos: TPoint;

    FSelecting: Boolean;
    FPointStart, FPointEnd: TPoint;
    FOldRect: TRect;
    FNewRect: TRect;


    FMouseRect: TRect;//鼠标被限制的范围
    procedure MouseLock(Sender: TControl);//锁定鼠标到某一个范围
    procedure MouseFree();//释放对鼠标的锁定

    function OnMessage(Sender: TControl; var Message: TMessage): Boolean;
    procedure Remove(AControl: TControl); overload;
    procedure Remove(Index: Integer); overload;
    procedure Clear();
    function Add(AControl: TControl): TControl;
    procedure ShowGrabHandle(const Show: boolean);
    procedure ClearGrabHandle(AControl: TControl);
    procedure SetDragging(const Value: Boolean);
    function GetControlCount: Integer;
    function GetControls(Index: Integer): TControl;
    procedure AddRectControls(Parent: TWinControl; Rect: TRect);
    function OwnerCheck(Sender: TControl; CheckOnwer: TComponent): Boolean;

    procedure MouseDown(Sender: TControl; Button: TMouseButton; Shift: TShiftState; X: Integer;
      Y: Integer); virtual;
    procedure MouseUp(Sender: TControl; Button: TMouseButton; Shift: TShiftState; X: Integer;
      Y: Integer); virtual;
    procedure MouseMove(Sender: TControl; Shift: TShiftState; X: Integer; Y: Integer); virtual;
    procedure KeyDown(Sender: TControl; var Key: Word; Shift: TShiftState); virtual;
  public
    constructor Create();
    destructor Destroy; override;

    property Dragging: Boolean read FDragging write SetDragging;
    property ControlCount: Integer read GetControlCount;
    property Controls[Index: Integer]: TControl read GetControls;
  public
    { IDesignerNotify 的接口}
    procedure Modified;
    procedure Notification(AnObject: TPersistent; Operation: TOperation);
    procedure CanInsertComponent(AComponent: TComponent);

  public
    { IDesignerHook 的接口}
    function GetCustomForm: TCustomForm;
    procedure SetCustomForm(Value: TCustomForm);
    function GetIsControl: Boolean;
    procedure SetIsControl(Value: Boolean);
    function IsDesignMsg(Sender: TControl; var Message: TMessage): Boolean;
    procedure PaintGrid;
    procedure PaintMenu;
    procedure ValidateRename(AComponent: TComponent;
      const CurName, NewName: string);
    function UniqueName(const BaseName: string): string;
    function GetRoot: TComponent;

    property IsControl: Boolean read GetIsControl write SetIsControl;
    property Form: TCustomForm read GetCustomForm write SetCustomForm;
  end;

  //小黑点的方向性
  TGrabHandleDirect = (fdLeftUp, fdUp, fdRightUp, fdRight,
    fdRightDown, fdDown, fdLeftDown, fdLeft);

  //就是选中时空间边上那八个小黑点
  TGrabHandle = class(TCustomControl)
  private
    FManager: TGrabHandleManager;
    FControl: TControl;
    FDirect: TGrabHandleDirect;
    FDesigner: TDesignerHook;
    procedure Pos();
    function GetDesigner: TDesignerHook;
  protected
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X: Integer;
      Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X: Integer;
      Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X: Integer; Y: Integer); override;
  public
    constructor Create(AManager: TComponent; AControl: TControl; ADirect: TGrabHandleDirect);
    destructor Destroy; override;

    property Designer: TDesignerHook read GetDesigner;
  end;

procedure SetDesignState(AComponent : TComponent; Value : Boolean);
var
  Root : TWinControl;
  i : Integer;
begin
  TCrackComponent(AComponent).SetDesigning(Value, True);
  if AComponent is TWinControl then
  begin
    root := TWinControl(AComponent);
    for i := 0 to Root.ControlCount - 1 do
      SetDesignState(Root.Controls[i], Value);
  end;
end;

function BeginDesign(Form: TCustomForm): IDesignerHook;
begin
  Result := BeginDesign(Form, Form);
end;

function BeginDesign(Form: TCustomForm; Root: TWinControl): IDesignerHook;
var
  Designer          : TDesignerHook;
  I                 : Integer;
begin
  Designer := TDesignerHook.Create();
  Designer.Form := Form;
  Designer.FRoot := Root;

  Result := Designer as IDesignerHook;
  Form.Designer := Result;
  TCrackComponent(Form).SetDesigning(True, False);
  SetDesignState(Root, True);
end;

procedure EndDesign(Form : TCustomForm);
begin
  SetDesignState(Form, False);
  Form.Designer := nil;
end;

{ TDesignerHook }

function TDesignerHook.Add(AControl: TControl): TControl;
var
  D                 : TGrabHandleDirect;
  FrameSize         : TGrabHandle;
begin
  Result := AControl;
  FControls.Add(AControl);
  for D := fdLeftUp to fdLeft do
  begin
    FrameSize := TGrabHandle.Create(FGrabHandleManager, AControl, D);
  end;

end;

procedure TDesignerHook.AddRectControls(Parent: TWinControl; Rect: TRect);
  function InRect(R1, R2: TRect): Boolean;
  begin
    Result := False;
    if not IntersectRect(R1, R1, R2) then
      Exit;
    Result := not IsRectEmpty(R1);
  end;
var
  I                 : Integer;
begin
  Clear();
  for I := 0 to Parent.ControlCount - 1 do
    if InRect(Rect, Parent.Controls[I].BoundsRect) and
      OwnerCheck(Parent.Controls[I], FRoot) then
    begin
      Add(Parent.Controls[I]);
    end;

end;

procedure TDesignerHook.CanInsertComponent(AComponent: TComponent);
begin

end;

procedure TDesignerHook.Clear;
var
  I                 : Integer;
begin
  for I := FControls.Count - 1 downto 0 do
    Remove(I);
end;

procedure TDesignerHook.ClearGrabHandle(AControl: TControl);
var
  I                 : Integer;
begin
  for I := FGrabHandleManager.ComponentCount - 1 downto 0 do
    if (FGrabHandleManager.Components[I] is TGrabHandle)
      and (TGrabHandle(FGrabHandleManager.Components[I]).FControl = AControl) then
      TGrabHandle(FGrabHandleManager.Components[I]).Free;
end;

constructor TDesignerHook.Create;
begin
  FGrabHandleManager := TGrabHandleManager.Create(Self);
  FControls := TList.Create;
end;

destructor TDesignerHook.Destroy;
begin
  if FForm <> nil then
    TCrackComponent(FForm).SetDesigning(False, True);
  
  FGrabHandleManager.Free;
  FControls.Free;
  inherited Destroy;
end;

function TDesignerHook.GetControlCount: Integer;
begin
  Result := FControls.Count;
end;

function TDesignerHook.GetControls(Index: Integer): TControl;
begin
  Result := TControl(FControls[Index]);
end;

function TDesignerHook.GetCustomForm: TCustomForm;
begin
  Result := FForm;
end;

function TDesignerHook.GetIsControl: Boolean;
begin
  Result := TCrackControl(FForm).IsControl;
end;

function TDesignerHook.GetRoot: TComponent;
begin
  Result := FForm;
end;

function TDesignerHook.OnMessage(Sender: TControl;
  var Message: TMessage): Boolean;
var
  CtrlIndex, I      : Integer;
begin
  Result := ((Message.Msg >= WM_MOUSEFIRST) and (Message.Msg <= WM_MOUSELAST))
    or ((Message.Msg >= WM_KEYFIRST) and (Message.Msg <= WM_KEYLAST));

  case Message.Msg of
    WM_LBUTTONDOWN:
      MouseDown(
        Sender,
        mbLeft,
        KeysToShiftState(TWMMouse(Message).Keys),
        TWMMouse(Message).XPos,
        TWMMouse(Message).YPos
        );
    WM_MOUSEMOVE:
      begin
        MouseMove(
          Sender,
          KeysToShiftState(TWMMouse(Message).Keys),
          TWMMouse(Message).XPos,
          TWMMouse(Message).YPos);

      end;
    WM_LBUTTONUP:
      begin
        MouseUp(
          Sender,
          mbLeft,
          KeysToShiftState(TWMMouse(Message).Keys),
          TWMMouse(Message).XPos,
          TWMMouse(Message).YPos);
      end;
    WM_KEYDOWN:
      begin
        KeyDown(
          Sender,
          TWMKey(Message).CharCode,
          KeyDataToShiftState(TWMKey(Message).KeyData)
          );
      end;
  end;
  if Sender = FForm then
    Result := False;

end;

function TDesignerHook.IsDesignMsg(Sender: TControl;
  var Message: TMessage): Boolean;
begin
  Result := False;
  if (Sender is TGrabHandle) then
    Exit;

  case Message.Msg of
    WM_MOUSEFIRST..WM_MOUSELAST,
      WM_KEYFIRST..WM_KEYLAST:
      Result := OnMessage(Sender, Message);
  end;
end;

procedure TDesignerHook.KeyDown(Sender: TControl; var Key: Word;
  Shift: TShiftState);
var
  I                 : Integer;
begin
  if (ControlCount = 0)
    or ((not (ssShift in Shift)) and (not (ssCtrl in Shift)))
    or (Key in [VK_CONTROL, VK_SHIFT])
    then
    Exit;
  if (ControlCount = 1) and (Controls[0] = FForm) then
    Exit;

  if ssCtrl in Shift then
  begin
    case Key of
      VK_UP:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              Controls[I].Top := Controls[I].Top - 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
      VK_DOWN:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              Controls[I].Top := Controls[I].Top + 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
      VK_LEFT:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              Controls[I].Left := Controls[I].Left - 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
      VK_RIGHT:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              Controls[I].Left := Controls[I].Left + 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
    end;
  end
  else
  begin
    case Key of
      VK_UP:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              if Controls[I].Height - 1 > 1 then
                Controls[I].Height := Controls[I].Height - 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
      VK_DOWN:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              if Controls[I].Height + 1 > 1 then
                Controls[I].Height := Controls[I].Height + 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
      VK_LEFT:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              if Controls[I].Width - 1 > 1 then

                Controls[I].Width := Controls[I].Width - 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
      VK_RIGHT:
        begin
          ShowGrabHandle(False);
          try
            for I := 0 to ControlCount - 1 do
            begin
              if Controls[I].Width + 1 > 1 then
                Controls[I].Width := Controls[I].Width + 1;
            end;
          finally
            ShowGrabHandle(True);
          end;
        end;
    end;
  end;
end;

procedure TDesignerHook.Modified;
begin
end;

procedure TDesignerHook.MouseDown(Sender: TControl; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  CtrlIndex, I      : Integer;
begin
  if Dragging then
    Exit;

  CtrlIndex := FControls.IndexOf(Sender);

  if (ssShift in Shift) then //按Shift多选
  begin
    if (Sender = FRoot)or(Sender = FForm) then //多选不能添加Root或者Form
      Exit;

    if CtrlIndex = -1 then
    begin
      Add(Sender);
      Dragging := False;
    end
    else
    begin
      Remove(Sender);
      ShowGrabHandle(True);
    end;
  end
  else
    if (ssCtrl in Shift) or (Sender = FRoot) then //按住Shift或者点击的是Root就框选
    begin
      Clear();
      if (Sender is TWinControl) then
      begin
        if (TWinControl(Sender).ControlCount = 0) then
        begin
          if CtrlIndex = -1 then
          begin
            Add(Sender);
            ShowGrabHandle(True);
          end;
        end
        else
        begin
          FPointStart := Sender.ClientToScreen(Point(X, Y));
          FOldRect := Rect(X, Y, X + 1, Y + 1);
          FSelecting := True;
          SetCaptureControl(Sender);
        end;
        Exit;
      end;
    end
    else   //没按Shift也没按Ctrl点击.那就添加自己到选择的控件组中 .Root和Form不能和别的控件同时在组中
    begin
      begin
        if (Sender = FRoot)or(Sender = FForm) then
          Exit;
        if CtrlIndex = -1 then
        begin
          Clear();
          Add(Sender);
        end;
      end;

      Dragging := True;
      FDraggingControl := Sender;
      MouseLock(Sender);
      FBeforDragPos := Sender.ClientToScreen(Point(X, Y));
    end;
end;

procedure TDesignerHook.MouseFree;
begin
  SetCaptureControl(nil);
  ClipCursor(@FMouseRect);
end;

procedure TDesignerHook.MouseLock(Sender: TControl);
var
  R                 : TRect;
begin
  SetCaptureControl(Sender);
  GetClipCursor(FMouseRect);

  if Sender.Parent = nil then
    Exit;
  
  R := Sender.Parent.ClientRect;
  R.TopLeft := Sender.Parent.ClientToScreen(R.TopLeft);
  R.BottomRight := Sender.Parent.ClientToScreen(R.BottomRight);
  ClipCursor(@R); //把鼠标锁定在固定区域
end;

procedure TDesignerHook.MouseMove(Sender: TControl; Shift: TShiftState; X,
  Y: Integer);
var
  I                 : Integer;
  CPos              : TPoint;
  DC                : HDC;
begin

  if Dragging then
  begin
    CPos := Mouse.CursorPos;
    for I := FControls.Count - 1 downto 0 do
      if Controls[I].Parent = Sender.Parent then //如果都是同一个Paren的话
      begin
        Controls[I].Left := Controls[I].Left - (FBeforDragPos.X - CPos.X);
        Controls[I].Top := Controls[I].Top - (FBeforDragPos.Y - CPos.Y);
      end
      else
      begin
        Remove(I);
      end;
    FBeforDragPos := CPos;
  end
  else
    if FSelecting then
    begin
      FPointEnd := Sender.ClientToScreen(Point(X, Y));
      FNewRect := PointToRect(FPointStart, FPointEnd);

      DC := GetDC(0);
      DrawFocusRect(DC, FOldRect);
      DrawFocusRect(DC, FNewRect);
      ReleaseDC(0, DC);
      FOldRect := FNewRect;

    end;
end;

procedure TDesignerHook.MouseUp(Sender: TControl; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  DC                : HDC;
begin
  if Dragging then
  begin
    MouseFree();
    Dragging := False;
  end;
  if FSelecting then
  begin
    DC := GetDC(0);
    DrawFocusRect(DC, FOldRect);
    ReleaseDC(0, DC);
    FSelecting := False;
    SetCaptureControl(nil);
    if Sender is TWinControl then
    begin
      FOldRect.TopLeft := Sender.ScreenToClient(FOldRect.TopLeft);
      FOldRect.BottomRight := Sender.ScreenToClient(FOldRect.BottomRight);
      FOldRect := PointToRect(FOldRect.TopLeft, FOldRect.BottomRight);
      AddRectControls(TWinControl(Sender), FOldRect);
      ShowGrabHandle(True);
    end;
  end;
end;

procedure TDesignerHook.Notification(AnObject: TPersistent; Operation: TOperation);
var
  Index             : Integer;
begin
  case Operation of
    opRemove:
      begin
        Index := FControls.IndexOf(AnObject);
        if Index <> -1 then
          Remove(Index);
        if AnObject = FForm then
        begin
          TCrackComponent(FForm).SetDesigning(False, True);
          FForm := nil;
        end;
      end;
    opInsert:
      begin
      end;
  end;

end;

procedure TDesignerHook.PaintGrid;
begin

end;

procedure TDesignerHook.PaintMenu;
begin

end;

function TDesignerHook.OwnerCheck(Sender: TControl; CheckOnwer: TComponent): Boolean;
var
  W                 : TComponent;
begin
  Result := False;
  W := Sender.Owner;
  while W <> nil do
  begin
    if W = CheckOnwer then
    begin
      Result := True;
      Exit;
    end;
    W := W.Owner;
  end;
end;

procedure TDesignerHook.Remove(Index: Integer);
var
  I                 : Integer;
  Control           : TControl;
begin
  if Index = -1 then
    Exit;
  Control := TControl(FControls[Index]);
  FControls.Delete(Index);
  ClearGrabHandle(Control);
end;

procedure TDesignerHook.Remove(AControl: TControl);
begin
  Remove(FControls.IndexOf(AControl));
end;

procedure TDesignerHook.SetCustomForm(Value: TCustomForm);
begin
  FForm := Value;
  if Value <> nil then
    Value.Designer := Self;
end;

procedure TDesignerHook.SetDragging(const Value: Boolean);
var
  I                 : Integer;
begin
  FDragging := Value;
  ShowGrabHandle(not Value);
end;

procedure TDesignerHook.SetIsControl(Value: Boolean);
begin
  if FForm is TControl then
    TCrackControl(FForm).IsControl := Value;
end;

procedure TDesignerHook.ShowGrabHandle(const Show: boolean);
var
  I                 : Integer;
begin
  for I := 0 to FGrabHandleManager.ComponentCount - 1 do
    if (FGrabHandleManager.Components[I] is TGrabHandle)
      then
    begin
      if ControlCount > 1 then
      begin
        TGrabHandle(FGrabHandleManager.Components[I]).Color := clAppWorkSpace;
      end
      else
      begin
        TGrabHandle(FGrabHandleManager.Components[I]).Color := clBlack;
      end;

      TGrabHandle(FGrabHandleManager.Components[I]).Pos();
      TGrabHandle(FGrabHandleManager.Components[I]).Visible := Show and
        ((ControlCount = 1) or
        ((ControlCount > 1)
        and (TGrabHandle(FGrabHandleManager.Components[I]).FDirect in [fdLeftUp, fdLeftDown, fdRightUp, fdRightDown])));
    end;
end;

function TDesignerHook.UniqueName(const BaseName: string): string;
var
  guid              : TGuid;
  s                 : string;
begin
  OleCheck(CoCreateGuid(guid));
  s := GuidToString(guid);
  s := Copy(s, 2, Length(s) - 2); //
  s := StringReplace(s, '-', '', []);
  Result := BaseName + s;
end;

procedure TDesignerHook.ValidateRename(AComponent: TComponent;
  const CurName, NewName: string);
begin

end;

{ TGrabHandle }

constructor TGrabHandle.Create(AManager: TComponent; AControl: TControl; ADirect: TGrabHandleDirect);
begin
  inherited Create(AManager);
  FManager := TGrabHandleManager(AManager);
  FDesigner := FManager.FDesigner;
  Color := clBlack;
  FDirect := ADirect;
  FControl := AControl;
  Visible := False;
  Parent := AControl.Parent;
  Pos();
end;

destructor TGrabHandle.Destroy;
begin

  inherited Destroy;
end;

function TGrabHandle.GetDesigner: TDesignerHook;
begin
  Result := FManager.FDesigner;
end;

procedure TGrabHandle.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited MouseDown(Button, Shift, X, Y);
  if Designer.ControlCount > 1 then
    Exit;
  Designer.Dragging := True;
  Designer.FBeforDragPos := ClientToScreen(Point(X, Y));
  MouseCapture := True;
end;

procedure TGrabHandle.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  I                 : Integer;
  CPos              : TPoint;
  cX, cY            : Integer;
begin
  inherited MouseMove(Shift, X, Y);
  if not Designer.Dragging then
    Exit;
  CPos := ClientToScreen(Point(X, Y));
  {
  for I := 0 to Designer.ControlCount - 1 do
  begin
    Designer.Controls[I].Left := Designer.Controls[I].Left + (X - Designer.FBeforDragPos.X);
    Designer.Controls[I].Top := Designer.Controls[I].Top + (Y - Designer.FBeforDragPos.Y);
  end;
  }
  cX := Designer.FBeforDragPos.X - CPos.X;
  cY := Designer.FBeforDragPos.Y - CPos.Y;
  if (Abs(cX) < 2) and (Abs(cY) < 2) then
    Exit;

  case FDirect of
    fdLeftUp:
      begin
        if FControl.Width + cX > 1 then
        begin
          FControl.Left := FControl.Left - cX;
          FControl.Width := FControl.Width + cX;
          Designer.FBeforDragPos.X := CPos.X;
        end;
        if FControl.Height + cY > 1 then
        begin
          FControl.Top := FControl.Top - cY;
          FControl.Height := FControl.Height + cY;
          Designer.FBeforDragPos.Y := CPos.Y;
        end;
      end;
    fdUp:
      begin
        if FControl.Height + cY > 1 then
        begin
          FControl.Top := FControl.Top - cY;
          FControl.Height := FControl.Height + cY;
          Designer.FBeforDragPos.Y := CPos.Y;
        end;
      end;
    fdRightUp:
      begin
        if FControl.Width - cX > 1 then
        begin
          FControl.Width := FControl.Width - cX;
          Designer.FBeforDragPos.X := CPos.X;
        end;
        if FControl.Height + cY > 1 then
        begin
          FControl.Top := FControl.Top - cY;
          FControl.Height := FControl.Height + cY;
          Designer.FBeforDragPos.Y := CPos.Y;
        end;
      end;
    fdRight:
      begin
        if FControl.Width - cX > 1 then
        begin
          FControl.Width := FControl.Width - cX;
          Designer.FBeforDragPos.X := CPos.X;
        end;
      end;
    fdRightDown:
      begin
        if FControl.Width - cX > 1 then
        begin
          FControl.Width := FControl.Width - cX;
          Designer.FBeforDragPos.X := CPos.X;
        end;
        if FControl.Height - cY > 1 then
        begin
          FControl.Height := FControl.Height - cY;
          Designer.FBeforDragPos.Y := CPos.Y;
        end;
      end;
    fdDown:
      begin
        if FControl.Height - cY > 1 then
        begin
          FControl.Height := FControl.Height - cY;
          Designer.FBeforDragPos.Y := CPos.Y;
        end;
      end;
    fdLeftDown:
      begin
        if FControl.Width + cX > 1 then
        begin
          FControl.Left := FControl.Left - cX;
          FControl.Width := FControl.Width + cX;
          Designer.FBeforDragPos.X := CPos.X;
        end;
        if FControl.Height - cY > 1 then
        begin
          FControl.Height := FControl.Height - cY;
          Designer.FBeforDragPos.Y := CPos.Y;
        end;
      end;
    fdLeft:
      begin
        if FControl.Width + cX > 1 then
        begin
          FControl.Left := FControl.Left - cX;
          FControl.Width := FControl.Width + cX;
          Designer.FBeforDragPos.X := CPos.X;
        end;
      end;
  end;

end;

procedure TGrabHandle.MouseUp(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited MouseUp(Button, Shift, X, Y);
  MouseCapture := False;
  Designer.Dragging := False;
end;

procedure TGrabHandle.Pos();
var
  X                 : array[0..2] of Integer;
  Y                 : array[0..2] of Integer;
begin
  X[0] := FControl.Left - GrabHandleSize div 2;
  X[1] := FControl.Left + (FControl.Width - GrabHandleSize) div 2;
  X[2] := FControl.Left + FControl.Width - GrabHandleSize div 2;
  Y[0] := FControl.Top - GrabHandleSize div 2;
  Y[1] := FControl.Top + (FControl.Height - GrabHandleSize) div 2;
  Y[2] := FControl.Top + FControl.Height - GrabHandleSize div 2;
  case FDirect of
    fdLeftUp:
      begin
        Cursor := crSizeNWSE;
        SetBounds(X[0], Y[0], GrabHandleSize, GrabHandleSize);
      end;
    fdUp:
      begin
        Cursor := crSizeNS;
        SetBounds(X[1], Y[0], GrabHandleSize, GrabHandleSize);
      end;
    fdRightUp:
      begin
        Cursor := crSizeNESW;
        SetBounds(X[2], Y[0], GrabHandleSize, GrabHandleSize);
      end;
    fdRight:
      begin
        Cursor := crSizeWE;
        SetBounds(X[2], Y[1], GrabHandleSize, GrabHandleSize);
      end;
    fdRightDown:
      begin
        Cursor := crSizeNWSE;
        SetBounds(X[2], Y[2], GrabHandleSize, GrabHandleSize);
      end;
    fdDown:
      begin
        Cursor := crSizeNS;
        SetBounds(X[1], Y[2], GrabHandleSize, GrabHandleSize);
      end;
    fdLeftDown:
      begin
        Cursor := crSizeNESW;
        SetBounds(X[0], Y[2], GrabHandleSize, GrabHandleSize);
      end;
    fdLeft:
      begin
        Cursor := crSizeWE;
        SetBounds(X[0], Y[1], GrabHandleSize, GrabHandleSize);
      end;
  end;
  if FDesigner.ControlCount > 1 then
     Cursor := crDefault;
  BringToFront;
end;

{ TGrabHandleManager }

constructor TGrabHandleManager.Create(ADesigner: TDesignerHook);
begin
  inherited Create(nil);
  FDesigner := ADesigner;
end;

end.

