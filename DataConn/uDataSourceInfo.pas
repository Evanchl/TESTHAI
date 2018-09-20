{*******************************************************}
{                                                       }
{       ��Ȩ���� (C) 2018 �����Ƽ�                      }
{                                                       }
{       Author: EvanChen 2018-08-20 15:09:43            }
{*******************************************************}
unit uDataSourceInfo;

interface
uses
  IniFiles,SysUtils;

  const NIMISDB_SECTION = 'NIMISDB';

var
  //���ݿ������ļ���
  DBIniFileName: string;
  //NIMIS���ݿ��ַ�����ݿ������û������û�����
  NIMISDB_Host,NIMISDB_DbName,NIMISDB_DbUser,NIMISDB_DbPwd: string;

  //��ȡ���ݿ�������Ϣ
  procedure ReadDbConnectInfo(vSectionName: string; var vHost,vDbName,vDbUser,vDbPwd: string);

  //д���ݿ�������Ϣ
  procedure WriteDbConnectInfo(vSectionName,vHost,vDbName,vDbUser,vDbPwd:string);

implementation
uses uDES;

const DES_KEY = 'HMKJ@!';


procedure ReadDbConnectInfo(vSectionName: string; var vHost,vDbName,vDbUser,vDbPwd: string);
var
  vIniFile: TIniFile;
begin
  vIniFile := TIniFile.Create(DBIniFileName);
  try
    try
      with vIniFile do
      begin
        vHost := string(DESDecryptStrFromHex(AnsiString(ReadString(vSectionName,'Host','')),AnsiString(DES_KEY)));
        vDbName := string(DESDecryptStrFromHex(AnsiString(ReadString(vSectionName,'DbName','')),AnsiString(DES_KEY)));
        vDbUser := string(DESDecryptStrFromHex(AnsiString(ReadString(vSectionName,'DbUser','')),AnsiString(DES_KEY)));
        vDbPwd := string(DESDecryptStrFromHex(AnsiString(ReadString(vSectionName,'DbPwd','')),AnsiString(DES_KEY)));
      end;
    except

    end;

  finally
    FreeAndNil(vIniFile);
  end;
end;

procedure WriteDbConnectInfo(vSectionName,vHost,vDbName,vDbUser,vDbPwd:string);
var
  vIniFile: TIniFile;
begin
  vIniFile := TIniFile.Create(DBIniFileName);
  try
    with vIniFile do
    begin
      WriteString(vSectionName,'Host',string(DESEncryptStrToHex(AnsiString(vHost),AnsiString(DES_KEY))));
      WriteString(vSectionName,'DbName',string(DESEncryptStrToHex(AnsiString(vDbName),AnsiString(DES_KEY))));
      WriteString(vSectionName,'DbUser',string(DESEncryptStrToHex(AnsiString(vDbUser),AnsiString(DES_KEY))));
      WriteString(vSectionName,'DbPwd',string(DESEncryptStrToHex(AnsiString(vDbPwd),AnsiString(DES_KEY))));
    end;
  finally
    FreeAndNil(vIniFile);
  end;
end;

end.
