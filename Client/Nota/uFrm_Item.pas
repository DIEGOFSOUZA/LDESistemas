unit uFrm_Item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TFrm_Item = class(TPdr_Child)
    actlst1: TActionList;
    actCancelar: TAction;
    actSalvar: TAction;
    pnlFundo0: TPanel;
    lblTitulo: TLabel;
    pnlRodape: TPanel;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlDados: TPanel;
    Label10: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    sItem: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    pnlPages: TPanel;
    pgc1: TPageControl;
    tsICMS: TTabSheet;
    pnlICMS: TPanel;
    tsIPI: TTabSheet;
    pnlIPI: TPanel;
    tsPIS: TTabSheet;
    pnlPIS: TPanel;
    tsCOFINS: TTabSheet;
    pnlCOFINS: TPanel;
    pnlCSOSN: TPanel;
    Label23: TLabel;
    DBComboBox2: TDBComboBox;
    pnlICMSDados: TPanel;
    Label13: TLabel;
    dbcbbCST: TDBComboBox;
    DBComboBox1: TDBComboBox;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label24: TLabel;
    DBComboBox3: TDBComboBox;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    dbedtIPI_ALIQ: TDBEdit;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBComboBox4: TDBComboBox;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label30: TLabel;
    DBEdit26: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    cofins: TDBComboBox;
    Label33: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label34: TLabel;
    DBEdit29: TDBEdit;
    Label35: TLabel;
    pnlVlFinal: TPanel;
    Label36: TLabel;
    lblVlFinal: TLabel;
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    FVlFinal: Currency;
    procedure SetVlFinal(const Value: Currency);
    { Private declarations }
  public
    constructor Create(Sender: TComponent);
    property VlFinal:Currency  read FVlFinal write SetVlFinal;
  end;

var
  Frm_Item: TFrm_Item;

implementation

uses
  uFrm_NF_Entrada;

{$R *.dfm}

procedure TFrm_Item.actCancelarExecute(Sender: TObject);
begin
  inherited;
  sItem.DataSet.Cancel ;
  Close ;
end;

procedure TFrm_Item.actSalvarExecute(Sender: TObject);
begin
  inherited;
  if sItem.DataSet.State in [dsEdit,dsInsert] then
    sItem.DataSet.Post ;
  Close;
end;

constructor TFrm_Item.Create(Sender: TComponent);
begin
  inherited Create(Sender);
  sItem.DataSet := (Sender as TFrm_NF_Entrada).dsItem ;
  pnlCSOSN.visible := False;
end;

procedure TFrm_Item.SetVlFinal(const Value: Currency);
begin
  FVlFinal := Value;
  lblVlFinal.Caption := FormatCurr('R$ #,##0.00',Value);
//  sItem.DataSet.FieldByName('total').AsCurrency := Value;
end;

end.
