program Monolito;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  uClientes in 'uClientes.pas' {frmClientes},
  uConfigDB in 'uConfigDB.pas' {frmConfigDB},
  uConexaoModulo in 'uConexaoModulo.pas' {DataModel: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TDataModel, DataModel);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConfigDB, frmConfigDB);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.Run;
end.
