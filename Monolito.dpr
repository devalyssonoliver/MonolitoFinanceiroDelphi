program Monolito;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  uClientes in 'uClientes.pas' {Frm_Clientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrm_Clientes, Frm_Clientes);
  Application.Run;
end.
