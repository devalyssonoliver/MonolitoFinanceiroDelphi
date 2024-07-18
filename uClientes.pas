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
  FireDAC.Comp.Client, uConexaoModulo, Vcl.ComCtrls;

type
  TfrmClientes = class(TForm)
    pnl_Principal: TCardPanel;
    cardCadastrar: TCard;
    ImageList: TImageList;
    dtSource: TDataSource;
    FDQuery1: TFDQuery;
    cardLocalizar: TCard;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    Panel3: TPanel;
    PraButtonStyle1: TPraButtonStyle;
    PraButtonStyle4: TPraButtonStyle;
    PraButtonStyle5: TPraButtonStyle;
    PraButtonStyle6: TPraButtonStyle;
    Panel4: TPanel;
    Splitter2: TSplitter;
    DBGrid2: TDBGrid;
    pnl_Top: TPanel;
    pnlButtons: TPanel;
    Panel5: TPanel;
    btnSalvar: TPraButtonStyle;
    btnCancelar: TPraButtonStyle;
    btnEditar: TPraButtonStyle;
    PraButtonStyle2: TPraButtonStyle;
    GroupBox1: TGroupBox;
    editNome: TEdit;
    GroupBox2: TGroupBox;
    editCod: TEdit;
    GPDate: TGroupBox;
    dtNasci: TDateTimePicker;
    PraButtonStyle3: TPraButtonStyle;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure PraButtonStyle5Click(Sender: TObject);
    procedure DesativarButton(Edit1, Edit2: TEdit);
    procedure LimparCampos(Edit1, Edit2: TEdit);
    procedure PraButtonStyle3Click(Sender: TObject);

    // Private declarations
  public
    // Public declarations
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Voc� deseja cancelar?', mtConfirmation, [mbYes, mbNo], 0,
    mbYes) = mrYes then
  begin
    cardLocalizar.show;
    LimparCampos(editNome, editCod);

  end;
end;

procedure TfrmClientes.btnSalvarClick(Sender: TObject);
begin

  try
    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add
      ('INSERT INTO clientes(id, nome, dt_nascimento) VALUES (:id, :nome, :dt_nascimento)');
    FDQuery1.ParamByName('id').AsInteger := StrToInt(editCod.Text);
    FDQuery1.ParamByName('nome').AsString := editNome.Text;
    FDQuery1.ParamByName('dt_nascimento').AsDate := (dtNasci.DateTime);
    FDQuery1.ExecSQL;
  finally
    ShowMessage('Cliente cadastrado com sucesso!');
    DesativarButton(editNome, editCod);
    dtNasci.Enabled := False;

  end;

end;

procedure TfrmClientes.DesativarButton(Edit1, Edit2: TEdit);
begin
  Edit1.Enabled := False;
  Edit2.Enabled := False;

end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  if DataModel.Con.Connected then
  begin
    ShowMessage('Carregando dados');
    FDQuery1.Active := True;
    dtSource.DataSet := FDQuery1;
  end
  else
  begin
    ShowMessage
      ('� necess�rio realizar a conex�o ao servidor para acessar os dados');
    Application.Terminate; // Encerra a aplica��o se n�o estiver conectado
  end;

end;

procedure TfrmClientes.LimparCampos(Edit1, Edit2: TEdit);
begin
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TfrmClientes.PraButtonStyle3Click(Sender: TObject);
begin
   FDQuery1.Close;
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('SELECT * FROM clientes');
   FDQuery1.ExecSQL;
end;

procedure TfrmClientes.PraButtonStyle5Click(Sender: TObject);
begin

  cardCadastrar.show;
end;

end.
