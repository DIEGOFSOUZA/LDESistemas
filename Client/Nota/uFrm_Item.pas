unit uFrm_Item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, LDESistemas.DAO.NFEntrada.Interfaces, Vcl.WinXCalendars,
  LDESistemas.Client.Utils.RTTI;

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
    pnlLote: TPanel;
    lblTitLote: TLabel;
    Label37: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    [Bind('LOTE','LOTE')]
    edtLote: TEdit;
    [Bind('DT_VALIDADE','DT_VALIDADE')]
    medtLoteValidade: TMaskEdit;
    [Bind('DT_PRODUCAO','DT_PRODUCAO')]
    medtLoteProducao: TMaskEdit;
    dsLote: TDataSource;
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure dsLoteDataChange(Sender: TObject; Field: TField);
  private
    FDao : iDAOInterface;
    FVlFinal: Currency;
    FIDNF: Integer;
    FIDPRO: Integer;
    FQTDE: Extended;
    procedure SetVlFinal(const Value: Currency);
    procedure CarregarLote();
  public
    constructor Create(Sender: TComponent);
    property VlFinal: Currency read FVlFinal write SetVlFinal;
    property IDNF : Integer read FIDNF write FIDNF;
    property IDPRO : Integer read FIDPRO write FIDPRO;
    property QTDE : Extended read FQTDE write FQTDE;
  end;

var
  Frm_Item: TFrm_Item;

implementation

uses
  uFrm_NF_Entrada, LDESistemas.DAO.NFEntradaItem;

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
//  if sItem.DataSet.State in [dsEdit,dsInsert] then
//    sItem.DataSet.Post ;
  if (dsLote.DataSet.FieldByName('ID').AsInteger > 0) then
    FDao
     .ID(dsLote.DataSet.FieldByName('ID').AsInteger)
     .Lote(edtLote.Text)
     .DtProducao(medtLoteProducao.Text)
     .DtValidade(medtLoteValidade.text)
     .IdNota(FIDNF)
     .IdProduto(FIDPRO)
     .Qtde(FQTDE)
     .Update
  else
    FDao
     .Lote(edtLote.Text)
     .DtProducao(medtLoteProducao.Text)
     .DtValidade(medtLoteValidade.text)
     .IdNota(FIDNF)
     .IdProduto(FIDPRO)
     .Qtde(FQTDE)
     .Insert;
  Close;
end;

procedure TFrm_Item.CarregarLote;
begin

end;

constructor TFrm_Item.Create(Sender: TComponent);
begin
  inherited Create(Sender);
  pnlCSOSN.visible := False;
  sItem.DataSet := (Sender as TFrm_NF_Entrada).dsItem ;
  FDao := TDAONFEntradaItem.New;

  FDao
   .IdNota(sItem.DataSet.FieldByName('ID_NOTAENTRADA').AsInteger)
   .IdProduto(sItem.DataSet.FieldByName('ID_PRODUTO').AsInteger)
  .Get
  .DataSet(dsLote);
end;

procedure TFrm_Item.dsLoteDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  TRTTIUtils.DataSetToForm(dsLote.DataSet, Self);
end;

procedure TFrm_Item.SetVlFinal(const Value: Currency);
begin
  FVlFinal := Value;
  lblVlFinal.Caption := FormatCurr('R$ #,##0.00',Value);
//  sItem.DataSet.FieldByName('total').AsCurrency := Value;
end;

end.
