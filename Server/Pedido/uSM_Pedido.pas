unit uSM_Pedido;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet;

type
  TSM_Pedido = class(TDSServerModule)
    fdqryPedVenda: TFDQuery;
    fdqryPedVendaItem: TFDQuery;
    fdqryPedVendaPagar: TFDQuery;
    dspPedVenda: TDataSetProvider;
    dsPedVenda: TClientDataSet;
    sPedVenda: TDataSource;
    TranGravar: TFDTransaction;
    fdqryPedVendaID_PEDVENDA: TIntegerField;
    fdqryPedVendaID_VENDEDOR: TIntegerField;
    fdqryPedVendaDT_EMISSAO: TDateField;
    fdqryPedVendaDT_ENTRADA: TDateField;
    fdqryPedVendaDT_ENTREGA: TDateField;
    fdqryPedVendaID_CLIENTE: TIntegerField;
    fdqryPedVendaCLI_CPFCNPJ: TStringField;
    fdqryPedVendaCLI_RGINSC: TStringField;
    fdqryPedVendaCLI_EMAIL: TStringField;
    fdqryPedVendaCLI_TELEFONE: TStringField;
    fdqryPedVendaCLI_F_CEP: TStringField;
    fdqryPedVendaCLI_F_END: TStringField;
    fdqryPedVendaCLI_F_NUM: TStringField;
    fdqryPedVendaCLI_F_COMPL: TStringField;
    fdqryPedVendaCLI_F_BAIRRO: TStringField;
    fdqryPedVendaCLI_E_CEP: TStringField;
    fdqryPedVendaCLI_E_END: TStringField;
    fdqryPedVendaCLI_E_NUM: TStringField;
    fdqryPedVendaCLI_E_COMPL: TStringField;
    fdqryPedVendaCLI_E_BAIRRO: TStringField;
    fdqryPedVendaDESCONTO: TFMTBCDField;
    fdqryPedVendaVL_DESCONTO: TFMTBCDField;
    fdqryPedVendaVL_FRETE: TFMTBCDField;
    fdqryPedVendaVL_O_CUSTOS: TFMTBCDField;
    fdqryPedVendaVL_TOTAL: TFMTBCDField;
    fdqryPedVendaItemID_PEDVENDA: TIntegerField;
    fdqryPedVendaItemORDEM: TIntegerField;
    fdqryPedVendaItemID_PROD: TIntegerField;
    fdqryPedVendaItemID_UNIDADE: TIntegerField;
    fdqryPedVendaItemQTDE: TFMTBCDField;
    fdqryPedVendaItemDESCONTO: TFMTBCDField;
    fdqryPedVendaItemVL_UNITARIO: TFMTBCDField;
    fdqryPedVendaItemVL_DESCONTO: TFMTBCDField;
    fdqryPedVendaItemVL_TOTAL: TFMTBCDField;
    fdqryPedVendaPagarID_PEDVENDA: TIntegerField;
    fdqryPedVendaPagarORDEM: TStringField;
    fdqryPedVendaPagarDT_VENC: TDateField;
    fdqryPedVendaPagarID_CONDPAGTO: TIntegerField;
    fdqryPedVendaPagarOBS: TStringField;
    fdqryPedVendaPagarVL_PARCELA: TFMTBCDField;
    fdqryPedVendaPagarVL_PAGO: TFMTBCDField;
    fdqryPedVendaPagarDTIME_BAIXA: TSQLTimeStampField;
    fdqryPedVendaPagarUSUARIO: TStringField;
    fdqryPedVendaREPRESENTANTE: TStringField;
    fdqryPedVendaCLIENTE: TStringField;
    fdqryPedVendaItemPRODUTO: TStringField;
    fdqryPedVendaItemUNIDADE: TStringField;
    fdqryPedVendaPagarPAGTO: TStringField;
    cdsLER: TClientDataSet;
  private
    procedure getClientDataSet(aClientDataSet: OleVariant);
  public
    function setPedVenda(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getPedVenda(const BD: string; pID: integer): OleVariant;

    function setPedidoVendaI(const BD: string; aIDPedido: Integer; aPedido: OleVariant; aITens: OleVariant; aReceber: OleVariant): Boolean;
  end;

implementation

uses
  uServerDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSM_Pedido }



{ TSM_Pedido }

procedure TSM_Pedido.getClientDataSet(aClientDataSet: OleVariant);
begin
  cdsLER.Close;
  cdsLER.Data := aClientDataSet;
end;

function TSM_Pedido.getPedVenda(const BD: string; pID: integer): OleVariant;
begin

end;

function TSM_Pedido.setPedidoVendaI(const BD: string; aIDPedido: Integer;
  aPedido, aITens, aReceber: OleVariant): Boolean;
const
  INS_PEDIDO  = 'insert into PEDIDO_VENDA (ENTREGA, ID_CLIENTE, ID_VENDEDOR, OBSERVACAO) '+
                'values (:ENTREGA, :ID_CLIENTE, :ID_VENDEDOR, :OBSERVACAO) '+
                'returning ID '+
                'into :ID';
  INS_ITEM    = 'insert into PEDIDO_VENDA_ITEM (ID_PEDIDO, ORDEM, ID_PRODUTO, VUNIT, QTDE, UNIDADE, QTDE_BAIXA, VDESC, SUBTOTAL, TOTAL) '+
                'values (:ID_PEDIDO, :ORDEM, :ID_PRODUTO, :VUNIT, :QTDE, :UNIDADE, :QTDE_BAIXA, :VDESC, :SUBTOTAL, :TOTAL)';
  INS_RECEBER = 'insert into CONTAS_A_RECEBER (TIPO, ID_TABELA_MASTER, ID_CONTA, ID_HISTORICO, NDUP, VDUP, VDESC, VJUROS, DVENC) '+
                'values (:TIPO, :ID_TABELA_MASTER, :ID_CONTA, :ID_HISTORICO, :NDUP, :VDUP, :VDESC, :VJUROS, :DVENC)';
var
  DM: TServerDM;
  lIDPedido: Integer;
begin
  DM := TServerDM.Create(BD);
  try
    try
      getClientDataSet(aPedido);
      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(INS_PEDIDO);
      DM.Gravar.ParamByName('ENTREGA').AsDate := cdsLER.FieldByName('ENTREGA').AsDateTime;
      DM.Gravar.ParamByName('ID_CLIENTE').AsInteger := cdsLER.FieldByName('ID_CLIENTE').AsInteger;
      DM.Gravar.ParamByName('ID_VENDEDOR').AsInteger := cdsLER.FieldByName('ID_VENDEDOR').AsInteger;
      DM.Gravar.ParamByName('OBSERVACAO').AsString := cdsLER.FieldByName('OBSERVACAO').AsString;
      DM.Gravar.ExecSQL;
      lIDPedido := DM.Gravar.ParamByName('ID').AsInteger;

      getClientDataSet(aITens);
      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(INS_ITEM);
      cdsLER.First;
      while not cdsLER.Eof do
      begin
        DM.Gravar.ParamByName('ID_PEDIDO').AsInteger := lIDPedido;
        DM.Gravar.ParamByName('ORDEM').AsInteger := cdsLER.FieldByName('ORDEM').AsInteger;
        DM.Gravar.ParamByName('ID_PRODUTO').AsInteger := cdsLER.FieldByName('ID_PRODUTO').AsInteger;
        DM.Gravar.ParamByName('VUNIT').AsCurrency := cdsLER.FieldByName('VUNIT').AsCurrency;
        DM.Gravar.ParamByName('QTDE').AsFloat := cdsLER.FieldByName('QTDE').AsFloat;
        DM.Gravar.ParamByName('UNIDADE').AsString := cdsLER.FieldByName('UNIDADE').AsString;
        DM.Gravar.ParamByName('QTDE_BAIXA').AsFloat := cdsLER.FieldByName('QTDE_BAIXA').AsFloat;
        DM.Gravar.ParamByName('VDESC').AsCurrency := cdsLER.FieldByName('VDESC').AsCurrency;
        DM.Gravar.ParamByName('SUBTOTAL').AsCurrency := cdsLER.FieldByName('SUBTOTAL').AsCurrency;
        DM.Gravar.ParamByName('TOTAL').AsCurrency := cdsLER.FieldByName('TOTAL').AsCurrency;
        DM.Gravar.ExecSQL;
        cdsLER.Next;
      end;

      getClientDataSet(aReceber);
      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(INS_RECEBER);
      cdsLER.First;
      while not cdsLER.Eof do
      begin
        DM.Gravar.ParamByName('TIPO').AsInteger := 1;
        DM.Gravar.ParamByName('ID_PEDIDO').AsInteger := lIDPedido;
        DM.Gravar.ParamByName('ID_CONTA').AsString := cdsLER.FieldByName('ID_CONTA').AsString;
        DM.Gravar.ParamByName('ID_HISTORICO').AsInteger := cdsLER.FieldByName('ID_HISTORICO').AsInteger;
        DM.Gravar.ParamByName('NDUP').AsInteger := cdsLER.FieldByName('NDUP').AsInteger;
        DM.Gravar.ParamByName('VDUP').AsCurrency := cdsLER.FieldByName('VDUP').AsCurrency;
        DM.Gravar.ParamByName('VDESC').AsCurrency := cdsLER.FieldByName('VDESC').AsCurrency;
        DM.Gravar.ParamByName('VJUROS').AsCurrency := cdsLER.FieldByName('VJUROS').AsCurrency;
        DM.Gravar.ParamByName('DVENC').AsDate := cdsLER.FieldByName('DVENC').AsDateTime;
        DM.Gravar.ExecSQL;
        cdsLER.Next;
      end;

      Result := True;
    except
      Result := False;
    end;
  finally
    FreeAndNil(DM);
  end;
end;

function TSM_Pedido.setPedVenda(const BD: string; pID: integer;
  const Dados: OleVariant): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    fdqryPedVenda.Connection := DM.Conexao;
    fdqryPedVendaItem.Connection := DM.Conexao;
    fdqryPedVendaPagar.Connection := DM.Conexao;
    TranGravar.Connection := DM.Conexao;
    TranGravar.StartTransaction;

    try
      dsPedVenda.Data := Dados;
      dsPedVenda.ApplyUpdates(0);
      TranGravar.Commit;
      Result := getPedVenda(BD, pID);
    except
      on e: Exception do
      begin
        TranGravar.Rollback;
        Result := False;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    dsPedVenda.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.

