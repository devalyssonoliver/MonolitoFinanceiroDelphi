unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPanels, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.WinXCalendars, PraButtonStyle,
  Vcl.JumpList,
  Vcl.ControlList, Vcl.CustomizeDlg, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uConexaoModulo, Vcl.ComCtrls, XDBGrids, frxSmartMemo,
  frxClass, frxDBSet, frCoreClasses;

type
  TfrmClientes = class(TForm)
    pnl_Principal: TCardPanel;
    ImageList: TImageList;
    dtSource: TDataSource;
    FDQuery1: TFDQuery;
    cardLocalizar: TCard;
    pnlTop: TPanel;
    Image1: TImage;
    Label1: TLabel;
    pnlPesquisar: TPanel;
    Edit1: TEdit;
    pnlButtons: TPanel;
    PraButtonStyle1: TPraButtonStyle;
    PraButtonStyle4: TPraButtonStyle;
    PraButtonStyle5: TPraButtonStyle;
    btnApagar: TPraButtonStyle;
    pnlDBGrid: TPanel;
    Splitter2: TSplitter;
    PraButtonStyle3: TPraButtonStyle;
    XDBGrid1: TXDBGrid;
    FDQuery1codigo: TIntegerField;
    FDQuery1nome: TWideStringField;
    FDQuery1apelido: TWideStringField;
    FDQuery1sexo: TWideStringField;
    FDQuery1endereco: TWideStringField;
    FDQuery1email: TWideStringField;
    FDQuery1telefone: TWideStringField;
    FDQuery1bairro: TWideStringField;
    FDTable: TFDTable;
    RelClientes: TfrxReport;
    relDataSet: TfrxDBDataset;
    procedure LimparCampos(Edit1, Edit2: TEdit);
    procedure PraButtonStyle3Click(Sender: TObject);
    procedure PraButtonStyle1Click(Sender: TObject);

    // Private declarations
  public
    // Public declarations
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.LimparCampos(Edit1, Edit2: TEdit);
begin
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TfrmClientes.PraButtonStyle1Click(Sender: TObject);
begin
  RelClientes.ShowReport;
end;

procedure TfrmClientes.PraButtonStyle3Click(Sender: TObject);
var
  query: String;
begin
  query := 'SELECT * FROM clientes';

  // Limpar a Query
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Text := query;

  // Verifica se Edit1 não está vazio
  if Edit1.Text <> '' then
  begin
    // Adiciona uma condição adicional baseada no valor de Edit1
    query := query + ' WHERE nome = ' + QuotedStr(Edit1.Text);

    // Atualiza o texto SQL do FDQuery1 com a consulta modificada
    FDQuery1.SQL.Text := query;
  end;

  // Abre a consulta
  FDQuery1.Open;
end;

end.
