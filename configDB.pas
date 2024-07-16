unit configDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PraButtonStyle, dbConnection;

type
  TfrmDBConexito = class(TForm)
    PraButtonStyle1: TPraButtonStyle;
    procedure PraButtonStyle1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBConexito: TfrmDBConexito;

implementation

{$R *.dfm}

procedure TfrmDBConexito.PraButtonStyle1Click(Sender: TObject);
var
  conex : TDbConexaoConfig;
begin
  configIni.DBIp := 'localhost';
  configIni.DBName := 'base_monolito';
  configIni.DBPort := 5432;
  configIni.DBUser := 'postgres';
  configIni.DbSenha := '1';
  GravarArqIni;

end;

end.
