                                           unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.WinXCalendars, PraButtonStyle;

type
  TFrm_Clientes = class(TForm)
    pnl_Principal: TCardPanel;
    card_Cadastrar: TCard;
    card_Localizar: TCard;
    pnl_buscar: TPanel;
    pnl_button: TPanel;
    pnl_grid: TPanel;
    logo_prod: TImage;
    DBGrid1: TDBGrid;
    ImageList: TImageList;
    Label6: TLabel;
    Panel1: TPanel;
    btn_novo: TPraButtonStyle;

    // Private declarations
  public
    // Public declarations
  end;

var
  Frm_Clientes: TFrm_Clientes;

implementation

{$R *.dfm}

end.

