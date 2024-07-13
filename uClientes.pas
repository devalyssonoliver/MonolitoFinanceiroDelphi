unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList;

type
  TFrm_Clientes = class(TForm)
    pnl_Principal: TCardPanel;
    card_Cadastrar: TCard;
    card_Localizar: TCard;
    pnl_buscar: TPanel;
    pnl_button: TPanel;
    pnl_grid: TPanel;
    logo_prod: TImage;
    edit_pesquisar: TEdit;
    DBGrid1: TDBGrid;
    ImageList: TImageList;
    shp_novo: TShape;
    lb_novo: TLabel;
    lb_exibir: TLabel;
    shp_exibir: TShape;
    shp_apagar: TShape;
    lb_apagar: TLabel;
    procedure shp_novoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);








  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Clientes: TFrm_Clientes;

implementation

{$R *.dfm}









procedure TFrm_Clientes.shp_novoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   if True then
    begin
      shp_novo.Brush.Color := clWebDarkBlue;
    end
    else
    begin

    shp_novo.Brush.COLOR := shp_novo.Brush.color ;


end;
end;

end.
