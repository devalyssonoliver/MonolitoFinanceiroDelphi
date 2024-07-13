unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ControlList,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon, System.ImageList, Vcl.ImgList,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.RibbonActnMenus,
  System.Actions, Vcl.ActnList, Vcl.RibbonSilverStyleActnCtrls, Vcl.ExtCtrls,
  Vcl.RibbonObsidianStyleActnCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus,
  Vcl.Imaging.pngimage, Unit2;

type
  TForm1 = class(TForm)
    Ribbon1: TRibbon;
    ActionForRibbon: TActionManager;
    ImageList: TImageList;
    LogoIcon: TRibbonApplicationMenuBar;
    RibbonPage: TRibbonPage;
    rb_clientes: TRibbonGroup;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);





  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}









procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
    Frm_Clientes.Show;
end;

end.
