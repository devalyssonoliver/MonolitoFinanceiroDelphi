unit uConfigDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, PraButtonStyle, uConexaoModulo,
  Vcl.Imaging.pngimage;

type
  TfrmConfigDB = class(TForm)
    pnl_Top: TPanel;
    img_Top: TImage;
    lb_Top: TLabel;
    lb_TopTwo: TLabel;
    pnl_Center: TPanel;
    lbName: TLabel;
    pnl_spt: TPanel;
    pnl_spt2: TPanel;
    EditIp: TEdit;
    lbIp: TLabel;
    lbPorta: TLabel;
    editPort: TEdit;
    editUser: TEdit;
    editBase: TEdit;
    lb_User: TLabel;
    lbBase: TLabel;
    btn_Confirmar: TPraButtonStyle;
    btn_Cancelar: TPraButtonStyle;
    editSenha: TEdit;
    lbSenha: TLabel;
    procedure btn_ConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarEntradas: Boolean;
  public
    { Public declarations }
  end;

var
  frmConfigDB: TfrmConfigDB;

implementation

{$R *.dfm}

procedure TfrmConfigDB.btn_ConfirmarClick(Sender: TObject);
begin
  if ValidarEntradas then
  begin
    configIni.SerEnder := EditIp.Text;
    configIni.DBName := editBase.Text;
    configIni.DBPorta := StrToInt(editPort.Text);
    configIni.DBUser := editUser.Text;
    configIni.DBPass := editSenha.Text;
    GravarIni;
    AjustarConDB;

    // Exibindo mensagem na interface de usuário
    Application.MessageBox('Configurações salvas com sucesso.', 'Sucesso', MB_OK + MB_ICONINFORMATION);

    Close;
  end;
end;

function TfrmConfigDB.ValidarEntradas: Boolean;
begin
  Result := True;

  if Trim(EditIp.Text) = '' then
  begin
    Application.MessageBox('Por favor, informe o endereço IP ou nome do servidor.', 'Aviso', MB_OK + MB_ICONWARNING);
    EditIp.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(editBase.Text) = '' then
  begin
    Application.MessageBox('Por favor, informe o nome do banco de dados.', 'Aviso', MB_OK + MB_ICONWARNING);
    editBase.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(editPort.Text) = '' then
  begin
    Application.MessageBox('Por favor, informe a porta do banco de dados.', 'Aviso', MB_OK + MB_ICONWARNING);
    editPort.SetFocus;
    Result := False;
    Exit;
  end;

  try
    StrToInt(editPort.Text);
  except
    on E: EConvertError do
    begin
      Application.MessageBox('Por favor, informe um número válido para a porta.', 'Aviso', MB_OK + MB_ICONWARNING);
      editPort.SetFocus;
      Result := False;
    end;
  end;
end;

end.

