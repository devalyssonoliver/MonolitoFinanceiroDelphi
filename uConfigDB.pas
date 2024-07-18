unit uConfigDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, PraButtonStyle, uConexaoModulo,
  Vcl.Imaging.pngimage, IniFiles;

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
    btnConectar: TPraButtonStyle;
    editSenha: TEdit;
    lbSenha: TLabel;
    btnSave: TPraButtonStyle;
    btnEditar: TPraButtonStyle;
    procedure BtnConectarClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function ValidarEntradas: Boolean;
    procedure HabilitarEdicao(const Enabled: Boolean);

  public
    { Public declarations }
  end;

var
  frmConfigDB: TfrmConfigDB;

implementation

{$R *.dfm}

procedure TfrmConfigDB.BtnConectarClick(Sender: TObject);
begin
  AjustarConDB();
  if DataModel.Con.Connected then
  begin
    ShowMessage('Conex�o feita com sucesso.');

  end;
end;

procedure TfrmConfigDB.BtnSaveClick(Sender: TObject);
begin
  if ValidarEntradas then
  begin
    configIni.SerEnder := EditIp.Text;
    configIni.DBName := editBase.Text;
    configIni.DBPorta := StrToInt(editPort.Text);
    configIni.DBUser := editUser.Text;
    configIni.DBPass := editSenha.Text;
    GravarIni;



    Application.MessageBox('Configura��es salvas com sucesso.', 'Sucesso',
      MB_OK + MB_ICONINFORMATION);
      HabilitarEdicao(False);

  end;
end;

procedure TfrmConfigDB.FormCreate(Sender: TObject);
begin
  if FileExists(ChangeFileExt(Application.ExeName, '.ini')) then
  begin
    LerIni;

  end
  else

  begin
     frmConfigDB.Show;
     GravarIni();
  end;
end;

procedure TfrmConfigDB.btnEditarClick(Sender: TObject);
begin
  // Habilita a edi��o dos campos ao clicar no bot�o "Editar"
  HabilitarEdicao(True);
end;

function TfrmConfigDB.ValidarEntradas: Boolean;
begin
  Result := True;

  if Trim(EditIp.Text) = '' then
  begin
    Application.MessageBox
      ('Por favor, informe o endere�o IP ou nome do servidor.', 'Aviso',
      MB_OK + MB_ICONWARNING);
    EditIp.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(editBase.Text) = '' then
  begin
    Application.MessageBox('Por favor, informe o nome do banco de dados.',
      'Aviso', MB_OK + MB_ICONWARNING);
    editBase.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(editPort.Text) = '' then
  begin
    Application.MessageBox('Por favor, informe a porta do banco de dados.',
      'Aviso', MB_OK + MB_ICONWARNING);
    editPort.SetFocus;
    Result := False;
    Exit;
  end;

  try
    StrToInt(editPort.Text);
  except
    on E: EConvertError do
    begin
      Application.MessageBox
        ('Por favor, informe um n�mero v�lido para a porta.', 'Aviso',
        MB_OK + MB_ICONWARNING);
      editPort.SetFocus;
      Result := False;
    end;
  end;
end;

procedure TfrmConfigDB.HabilitarEdicao(const Enabled: Boolean);
begin
  EditIp.Enabled := Enabled;
  editBase.Enabled := Enabled;
  editPort.Enabled := Enabled;
  editUser.Enabled := Enabled;
  editSenha.Enabled := Enabled;
  btnSave.Enabled := Enabled;
end;
end.

