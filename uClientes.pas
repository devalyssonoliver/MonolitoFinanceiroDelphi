 unit uClientes;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.ExtCtrls,
    Vcl.StdCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids,
    System.ImageList, Vcl.ImgList, Vcl.WinXCalendars, PraButtonStyle, Vcl.JumpList,
    Vcl.ControlList, Vcl.CustomizeDlg;

type
  TfrmClientes = class(TForm)
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
    pnlPesquisar: TPanel;
    btnNovo: TPraButtonStyle;
    editPsq: TEdit;
    btnExibir: TPraButtonStyle;
    PraButtonStyle2: TPraButtonStyle;
    PraButtonStyle3: TPraButtonStyle;
    Splitter1: TSplitter;




    // Private declarations
  public
    // Public declarations
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}








end.

