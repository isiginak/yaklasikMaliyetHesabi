unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, DBAccess, Uni, MemDS;

type
  TfrmMain = class(TForm)
    btnDosya: TButton;
    PopupMenu1: TPopupMenu;
    miYeni: TMenuItem;
    miDuzelt: TMenuItem;
    miSil: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    UniQuery1: TUniQuery;
    UniQuery2: TUniQuery;
    UniQuery3: TUniQuery;
    UniDataSource1: TUniDataSource;
    UniDataSource2: TUniDataSource;
    UniDataSource3: TUniDataSource;
    cxTabSheet4: TcxTabSheet;
    UniConnection1: TUniConnection;
    procedure btnDosyaClick(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uDosya;

{$R *.dfm}

procedure TfrmMain.btnDosyaClick(Sender: TObject);
begin
  //Yeni form create etmek için...
  if not Assigned(frmDosya) then
    frmDosya := TfrmDosya.Create(Self);

  try
    frmDosya.ShowModal;
  finally
    FreeAndNil(frmDosya);
  end;
end;

procedure TfrmMain.cxPageControl1Change(Sender: TObject);
begin
  //Tablar arasýnda gezinirken hangi queryi açmasý gerekiyorsa onu açtýrýyoruz..
  //1.Yöntem - Sayfalarýn(tabsheetlerin)  adlarýna göre kontrol ediyoruz..
  if cxPageControl1.ActivePage = cxTabSheet1 then
  begin
    UniQuery1.Close;
    UniQuery1.Open;
  end
  else if cxPageControl1.ActivePage = cxTabSheet2 then
  begin
    UniQuery2.Close;
    UniQuery2.Open;
  end
  else if cxPageControl1.ActivePage = cxTabSheet3 then
  begin
    UniQuery3.Close;
    UniQuery3.Open;
  end
  else
  begin
    //hiç biri deðilse...
  end;

  //2.Yöntem - Sayfalarýn(tabsheetlerin) propertieslerinden tabindex lerine göre kontrol ediyoruz...
  case cxPageControl1.ActivePageIndex of
    0:
    begin
      UniQuery1.Close;
      UniQuery1.Open;
    end;
    1:
    begin
      UniQuery2.Close;
      UniQuery2.Open;
    end;
    2:
    begin
      UniQuery3.Close;
      UniQuery3.Open;
    end;
  end;
end;

end.
