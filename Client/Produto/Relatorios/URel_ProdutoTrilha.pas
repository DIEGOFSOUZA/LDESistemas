unit URel_ProdutoTrilha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio.Cabecalho,
  RLReport, Vcl.StdCtrls, Data.DB, Datasnap.DBClient, RLFilters, RLPDFFilter;

type
  TRel_ProdutoTrilha = class(TPdr_RelatorioRetratoCabecalho)
    RLBand2: TRLBand;
    Label2: TLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    cdsTrilha: TClientDataSet;
    dsTrilha: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rlblSaldo: TRLLabel;
    cdsTrilhaENTSAI: TStringField;
    cdsTrilhaDTMOVTO: TDateField;
    cdsTrilhaLOTE: TStringField;
    cdsTrilhaUSUARIO: TStringField;
    cdsTrilhaID_PRODUTO: TIntegerField;
    cdsTrilhaDESCRI: TStringField;
    cdsTrilhaTIPO_PRODUTO: TStringField;
    cdsTrilhaCODBARRA: TStringField;
    rlblEntrada: TLabel;
    rlblSaida: TLabel;
    rlblSaldoTotal: TLabel;
    RLDraw1: TRLDraw;
    cdsTrilhaTIPO_MOVIMENTO: TStringField;
    rlblDescricao: TRLLabel;
    rlblTipoProduto: TRLLabel;
    rlblCodBarras: TRLLabel;
    rlblEstoqMinimo: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    rlblUM: TRLLabel;
    cdsTrilhaSIGLA_UM: TStringField;
    cdsTrilhaQTDE: TFMTBCDField;
    cdsTrilhaQTDE_FECHADA: TFMTBCDField;
    cdsTrilhaESTOQUE_MINIMO: TFMTBCDField;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    procedure MontaSQL() ;
    procedure MontaParametros() ;
  public
    { Public declarations }
    aSaldo, aTotEntrada, aTotSaida : Extended ;
    aCodProduto : Integer ;

    procedure Executar() ;
  end;

var
  Rel_ProdutoTrilha: TRel_ProdutoTrilha;

implementation

uses
  UDM;

{$R *.dfm}

procedure TRel_ProdutoTrilha.Executar;
begin
  MontaParametros ;
  MontaSQL() ;

  if cdsTrilha.IsEmpty then
  begin
    MessageDlg('Nenhuma movimenta��o encontrada.',mtInformation,[mbOK],0) ;
    Exit ;
  end;

  Relatorio.PreviewModal ;
end;

procedure TRel_ProdutoTrilha.MontaParametros;
begin
  rlblEmpFantasia.Caption := DM.Empresa.Fantasia ;
  rlblNomeRelatorio.Caption := 'Movimenta��o de Produtos/Mat�ria-Prima' ;
end;

procedure TRel_ProdutoTrilha.MontaSQL;
const
  SQL = 'SELECT p.* FROM PRO_MOVIMENTOPRODUTO(%s) p';
begin
  cdsTrilha.IndexFieldNames := 'DTMOVTO';
  cdsTrilha.Close ;
  cdsTrilha.Data := DM.LerDataSet(Format(SQL,[inttoStr(aCodProduto)])) ;
end;

procedure TRel_ProdutoTrilha.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblDescricao.Caption   := cdsTrilhaDESCRI.AsString ;
  rlblTipoProduto.Caption := cdsTrilhaTIPO_PRODUTO.AsString ;
  rlblCodBarras.Caption   := FormatFloat('0000000000000',cdsTrilhaCODBARRA.AsFloat) ;
  rlblEstoqMinimo.Caption := FormatFloat('#,##0.000',cdsTrilhaESTOQUE_MINIMO.AsFloat) ;
  rlblUM.Caption          := cdsTrilhaSIGLA_UM.AsString ;
end;

procedure TRel_ProdutoTrilha.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if cdsTrilhaENTSAI.AsString = 'E' then
  begin
    aTotEntrada := aTotEntrada + cdsTrilhaQTDE_FECHADA.AsFloat ;
    aSaldo      := aSaldo + cdsTrilhaQTDE_FECHADA.AsFloat ;
  end
  else
  begin
    aTotSaida := aTotSaida + cdsTrilhaQTDE_FECHADA.AsFloat ;
    aSaldo    := aSaldo - cdsTrilhaQTDE_FECHADA.AsFloat ;
  end;
  rlblSaldo.Caption := FormatFloat('#,##0.000',aSaldo) ;
end;

procedure TRel_ProdutoTrilha.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblEntrada.Caption    := FormatFloat('#,##0.000', aTotEntrada) ;
  rlblSaida.Caption      := FormatFloat('#,##0.000', aTotSaida) ;
  rlblSaldoTotal.Caption := FormatFloat('#,##0.000', aSaldo) ;
end;

end.
