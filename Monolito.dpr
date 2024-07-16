program Monolito;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  uClientes in 'uClientes.pas' {frmClientes},
  uConfigDB in 'uConfigDB.pas' {frmConfigDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmConfigDB, frmConfigDB);
  Application.Run;
end.
