unit uFrm_PedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Pedido, Data.DB, System.Actions,
  Vcl.ActnList, Datasnap.DBClient, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, UEDPesquisa, Vcl.Buttons, Vcl.ComCtrls, UDBPesquisa, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrm_PedidoVenda = class(TFrm_Pedido)
    dsItem: TClientDataSet;
    sItem: TDataSource;
    cdsID_PEDVENDA: TIntegerField;
    cdsID_VENDEDOR: TIntegerField;
    cdsDT_EMISSAO: TDateField;
    cdsDT_ENTRADA: TDateField;
    cdsDT_ENTREGA: TDateField;
    cdsID_CLIENTE: TIntegerField;
    cdsCLI_CPFCNPJ: TStringField;
    cdsCLI_RGINSC: TStringField;
    cdsCLI_EMAIL: TStringField;
    cdsCLI_TELEFONE: TStringField;
    cdsCLI_F_CEP: TStringField;
    cdsCLI_F_END: TStringField;
    cdsCLI_F_NUM: TStringField;
    cdsCLI_F_COMPL: TStringField;
    cdsCLI_F_BAIRRO: TStringField;
    cdsCLI_E_CEP: TStringField;
    cdsCLI_E_END: TStringField;
    cdsCLI_E_NUM: TStringField;
    cdsCLI_E_COMPL: TStringField;
    cdsCLI_E_BAIRRO: TStringField;
    cdsDESCONTO: TFMTBCDField;
    cdsVL_DESCONTO: TFMTBCDField;
    cdsVL_FRETE: TFMTBCDField;
    cdsVL_O_CUSTOS: TFMTBCDField;
    cdsVL_TOTAL: TFMTBCDField;
    cdsfdqryPedVendaPagar: TDataSetField;
    cdsfdqryPedVendaItem: TDataSetField;
    dsItemID_PEDVENDA: TIntegerField;
    dsItemORDEM: TIntegerField;
    dsItemID_PROD: TIntegerField;
    dsItemID_UNIDADE: TIntegerField;
    dsItemQTDE: TFMTBCDField;
    dsItemDESCONTO: TFMTBCDField;
    dsItemVL_UNITARIO: TFMTBCDField;
    dsItemVL_DESCONTO: TFMTBCDField;
    dsItemVL_TOTAL: TFMTBCDField;
    dsDuplicataID_PEDVENDA: TIntegerField;
    dsDuplicataORDEM: TStringField;
    dsDuplicataDT_VENC: TDateField;
    dsDuplicataID_CONDPAGTO: TIntegerField;
    dsDuplicataOBS: TStringField;
    dsDuplicataVL_PARCELA: TFMTBCDField;
    dsDuplicataVL_PAGO: TFMTBCDField;
    dsDuplicataDTIME_BAIXA: TSQLTimeStampField;
    dsDuplicataUSUARIO: TStringField;
    cdsREPRESENTANTE: TStringField;
    cdsCLIENTE: TStringField;
    dsItemPRODUTO: TStringField;
    dsItemUNIDADE: TStringField;
    dsDuplicataPAGTO: TStringField;
    procedure DBPesquisa2Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure edpsqsProdutoPesquisa(Sender: TObject; var Retorno: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedidoVenda: TFrm_PedidoVenda;

implementation

uses
  UDM, u_Mensagem, UConsulta;

{$R *.dfm}

procedure TFrm_PedidoVenda.DBPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Representante.ToString;
end;

procedure TFrm_PedidoVenda.DBPesquisa2Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Cliente.ToString;
end;

procedure TFrm_PedidoVenda.edpsqsProdutoPesquisa(Sender: TObject;
  var Retorno: string);
var
  lConsulta: TRetornoProduto;
begin
  inherited;
  lConsulta := Consulta.Produto(QuotedStr('PA'),'Consulta de Produtos') ;
  Retorno := IntToStr(lConsulta.iCodigo) ;
end;

end.
