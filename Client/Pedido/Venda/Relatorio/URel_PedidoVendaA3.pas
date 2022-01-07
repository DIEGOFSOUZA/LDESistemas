unit URel_PedidoVendaA3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio2_1, RLReport, Data.DB,
  Datasnap.DBClient;

type
  TRel_PedidoVendaA3 = class(TPdr_Relatorio2_1)
    rlbndDados: TRLBand;
    rlpnlDetailTop: TRLPanel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    rlpnlTopEndereco: TRLPanel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    rlpnlItens: TRLPanel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    rlpnlmages: TRLPanel;
    rlpnlImg1: TRLPanel;
    rlpnlImg2: TRLPanel;
    rlpnlImg3: TRLPanel;
    dsPedidoVenda: TDataSource;
    cdsPedidoVenda: TClientDataSet;
    rlsbdtlReceber: TRLSubDetail;
    rlbndTitReceber: TRLBand;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    rlbndReceberItens: TRLBand;
    dsItens: TDataSource;
    cdsItens: TClientDataSet;
    dsReceber: TDataSource;
    cdsReceber: TClientDataSet;
    dsIMG: TDataSource;
    cdsIMG: TClientDataSet;
    rlpnl1: TRLPanel;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLPanel1: TRLPanel;
    rlsbdtlItens: TRLSubDetail;
    rlbndItens: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    rlbndSumaryItens: TRLBand;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    rldbrsltQtde: TRLDBResult;
    rldbrsltTotItens: TRLDBResult;
    cdsPedidoVendaID: TIntegerField;
    cdsPedidoVendaEMISSAO: TDateField;
    cdsPedidoVendaENTREGA: TDateField;
    cdsPedidoVendaENTRADA: TDateField;
    cdsPedidoVendaOBSERVACAO: TStringField;
    cdsPedidoVendaVENDEDOR: TStringField;
    cdsPedidoVendaCLIENTE: TStringField;
    cdsPedidoVendaENDERECO: TStringField;
    cdsPedidoVendaNUMERO: TStringField;
    cdsPedidoVendaBAIRRO: TStringField;
    cdsPedidoVendaCEP: TStringField;
    cdsPedidoVendaCIDADE: TStringField;
    cdsPedidoVendaESTADO: TStringField;
    cdsItensID_PRODUTO: TIntegerField;
    cdsItensPRODUTO: TStringField;
    cdsItensUNIDADE: TStringField;
    cdsItensQTDE: TFloatField;
    cdsItensVUNIT: TFloatField;
    cdsItensVDESC: TFloatField;
    cdsItensTOTAL: TFloatField;
    cdsReceberDESCRI: TStringField;
    cdsReceberDVENC: TDateField;
    cdsReceberVDUP: TFMTBCDField;
    cdsIMGSEQUENCIA: TIntegerField;
    cdsIMGPATH_IMAGEM: TStringField;
  private
    FID_PEDIDO: Integer;
    procedure SetID_PEDIDO(const Value: Integer);
    procedure CarregarCDS();

  public
    property ID_PEDIDO : Integer read FID_PEDIDO write SetID_PEDIDO;
    procedure AbrirRelatorio();
  end;

var
  Rel_PedidoVendaA3: TRel_PedidoVendaA3;

implementation

uses
  UDM;

{$R *.dfm}

{ TRel_PedidoVendaA3 }

procedure TRel_PedidoVendaA3.AbrirRelatorio;
begin
  CarregarCDS;
  Relatorio.Prepare;
  Relatorio.PreviewModal;
end;

procedure TRel_PedidoVendaA3.CarregarCDS;
var
  lRetorno: OleVariant;
begin
  try
    lRetorno := DM.SMPedido.PedidoVenda_RelA3(DM.BancoDados, FID_PEDIDO);

    cdsPedidoVenda.Close;
    cdsItens.Close;
    cdsReceber.Close;
    cdsIMG.Close;

    cdsPedidoVenda.Data := lRetorno[0];
    cdsItens.Data := lRetorno[1];
    cdsReceber.Data := lRetorno[2];
    cdsIMG.Data := lRetorno[3];
  except

  end;
end;

procedure TRel_PedidoVendaA3.SetID_PEDIDO(const Value: Integer);
begin
  FID_PEDIDO := Value;
end;

end.
