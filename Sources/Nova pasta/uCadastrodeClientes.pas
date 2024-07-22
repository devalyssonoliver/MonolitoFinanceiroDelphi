unit uCadastrodeClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, PraButtonStyle, Vcl.ComCtrls;

type
  TFrm_Cadastro_Clientes = class(TForm)
    Pnl_Top: TPanel;
    ImgLogo: TImage;
    LBTitulo: TLabel;
    Pnl_Buttons: TPanel;
    Pnl_Campos: TPanel;
    Edt_Nome: TEdit;
    Lb_Nome: TLabel;
    Edt_Cpf: TEdit;
    Edt_Bairro: TEdit;
    Edt_Endereco: TEdit;
    Ent_DateNaci: TDateTimePicker;
    Edit4: TEdit;
    PraButtonStyle1: TPraButtonStyle;
    Pnl_Cidade: TPanel;
    Lb_Cidade: TLabel;
    Lb_Endereço: TLabel;
    Lb_Bairro: TLabel;
    Lb_Cpf: TLabel;
    Lb_DtNasci: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Clientes: TFrm_Cadastro_Clientes;

implementation

{$R *.dfm}



end.
