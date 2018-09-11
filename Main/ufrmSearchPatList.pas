{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-21 09:40:47            }
{*******************************************************}

unit ufrmSearchPatList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Data.DB,
  Vcl.Grids, Vcl.DBGrids, RzDBGrid, RzButton;

type
  TfrmSearchPatList = class(TForm)
    dsPatList: TDataSource;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzDBGrid1: TRzDBGrid;
    procedure RzDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchPatList: TfrmSearchPatList;

implementation

{$R *.dfm}

procedure TfrmSearchPatList.RzDBGrid1DblClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

end.
