unit UFrm_PedidoVenda_NovoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  UEDPesquisa, Datasnap.DBClient;

type
  TFrm_PedidoVenda_NovoProduto = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlTop: TPanel;
    pnlBotton: TPanel;
    pnlClient: TPanel;
    pnlClientBotton: TPanel;
    Label6: TLabel;
    lblItensSubTotal: TLabel;
    dbgrdItens: TDBGrid;
    pnlGravar: TPanel;
    lblGravar: TLabel;
    pnlCancelar: TPanel;
    lblCancelar: TLabel;
    edpesMatPrima: TEdPesquisa;
    Label4: TLabel;
    edtQtde: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    pnlAdicionarMat: TPanel;
    lblAdicionarMat: TLabel;
    cdsMatPrima: TClientDataSet;
    dsMatPrima: TDataSource;
    cdsMatPrimaMATPRIMA: TStringField;
    cdsMatPrimaQTDE: TFloatField;
    cdsMatPrimaUND: TStringField;
    cdsMatPrimaUNITARIO: TCurrencyField;
    cdsMatPrimaTOTAL: TCurrencyField;
    cdsMatPrimaSUBTOTAL: TAggregateField;
    pnlClientRight: TPanel;
    procedure cdsMatPrimaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedidoVenda_NovoProduto: TFrm_PedidoVenda_NovoProduto;

implementation

uses
  ACBrUtil;

{$R *.dfm}

procedure TFrm_PedidoVenda_NovoProduto.cdsMatPrimaCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsMatPrimaTOTAL.AsCurrency := RoundABNT((cdsMatPrimaQTDE.AsFloat*cdsMatPrimaUNITARIO.AsCurrency),2);
end;

end.
