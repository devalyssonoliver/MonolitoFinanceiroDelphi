unit uConexaoModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client, IniFiles;

type
  TConDBIni = record
    SerEnder: String;
    DBName: String;
    DBPorta: Integer;
    DBUser: String;
    DBPass: String;
  end;

type
  TDataModel = class(TDataModule)
    Con: TFDConnection;
    PGDriver: TFDPhysPgDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModel: TDataModel;
  configIni: TConDBIni;

procedure LerIni();
procedure GravarIni();

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure GravarIni();
var
  GravarIni: TIniFile;
begin
  GravarIni := TIniFile.Create(ExtractFileDir(GetCurrentDir) +
    '\MonolitoDB.ini');
  try
    GravarIni.WriteString('DATABASE', 'SerEnder', configIni.SerEnder);
    GravarIni.WriteString('DATABASE', 'DBName', configIni.DBName);
    GravarIni.WriteInteger('DATABASE', 'DBPorta', configIni.DBPorta);
    GravarIni.WriteString('DATABASE', 'DBUser', configIni.DBUser);
    GravarIni.WriteString('DATABASE', 'DBPass', configIni.DBPass);
  finally
    FreeAndNil(GravarIni);
  end;
end;

procedure LerIni();
var
  LerIni: TIniFile;
begin
  LerIni := TIniFile.Create(ExtractFileDir(GetCurrentDir) + '\MonolitoDB.ini');
  try
    configIni.SerEnder := LerIni.ReadString('DATABASE', 'SerEnder',
      'localhost');
    configIni.DBName := LerIni.ReadString('DATABASE', 'DBName', '');
    configIni.DBPorta := LerIni.ReadInteger('DATABASE', 'DBPorta', 5432);
    configIni.DBUser := LerIni.ReadString('DATABASE', 'DBUser', 'postgres');
    configIni.DBPass := LerIni.ReadString('DATABASE', 'DBPass', '');

  finally
    FreeAndNil(LerIni);
  end;
end;

end.
