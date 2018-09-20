{*******************************************************}
{                                                       }
{       版权所有 (C) 2018 恒明科技                      }
{                                                       }
{       Author: EvanChen 2018-08-20 15:09:43            }
{*******************************************************}
unit uDataSourceInfo;

interface
uses
  IniFiles,SysUtils;

  const NIMISDB_SECTION = 'NIMISDB';

var
  //数据库配置文件名
  DBIniFileName: string;
  //NIMIS数据库地址、数据库名、用户名、用户密码
  NIMISDB_Host,NIMISDB_DbName,NIMISDB_DbUser,NIMISDB_DbPwd: string;

  //读取数据库连接信息
  procedure ReadDbConnectInfo(vSectionName: string; var vHost,vDbName,vDbUser,vDbPwd: string);

  //写数据库连接信息
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
