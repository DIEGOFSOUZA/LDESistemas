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
    TranGravar: TFDTransaction;
    cdsLER: TClientDataSet;
    Pedido_Venda: TFDQuery;
    Pedido_VendaID: TIntegerField;
    Pedido_VendaEMISSAO: TDateField;
    Pedido_VendaENTRADA: TSQLTimeStampField;
    Pedido_VendaENTREGA: TDateField;
    Pedido_VendaID_CLIENTE: TIntegerField;
    Pedido_VendaID_VENDEDOR: TIntegerField;
    Pedido_VendaOBSERVACAO: TStringField;
    Pedido_VendaUSUARIO: TStringField;
    Pedido_VendaSTATUS: TStringField;
    dspPedido_Venda: TDataSetProvider;
    Pedido_VendaCLIENTE: TStringField;
    Pedido_VendaVENDEDOR: TStringField;
    cdsPedidoVenda: TClientDataSet;
    PedidoVenda_Itens: TFDQuery;
    dspPedidoVenda_Itens: TDataSetProvider;
    cdsPedidoVenda_Itens: TClientDataSet;
    Receber: TFDQuery;
    dspReceber: TDataSetProvider;
    cdsReceber: TClientDataSet;
    PedidoVenda_ItensID_PEDIDO: TIntegerField;
    PedidoVenda_ItensORDEM: TIntegerField;
    PedidoVenda_ItensID_PRODUTO: TIntegerField;
    PedidoVenda_ItensVUNIT: TFMTBCDField;
    PedidoVenda_ItensQTDE: TBCDField;
    PedidoVenda_ItensUNIDADE: TStringField;
    PedidoVenda_ItensQTDE_BAIXA: TBCDField;
    PedidoVenda_ItensVDESC: TFMTBCDField;
    PedidoVenda_ItensSUBTOTAL: TFMTBCDField;
    PedidoVenda_ItensTOTAL: TFMTBCDField;
    PedidoVenda_ItensPRODUTO: TStringField;
    ReceberID_TABELA_MASTER: TIntegerField;
    ReceberNDUP: TIntegerField;
    ReceberVDUP: TFMTBCDField;
    ReceberDVENC: TDateField;
    ReceberTIPO: TIntegerField;
  private
    procedure getClientDataSet(aClientDataSet: OleVariant);
  public
    function PedidoVenda_Adicionar(const BD: string; aTabelas: OleVariant): Boolean;
    function PedidoVenda_Editar(const BD: string; aTabelas: OleVariant): Boolean;
    function PedidoVenda_CriaProduto(const BD: string; aProduto: OleVariant; aProdComposicao: OleVariant): Integer;
    function PedidoVenda_AvancaStatus(const BD: string; aPedidos: OleVariant): Integer;
    function PedidoVenda_Excluir(const BD: string; aPedidos: OleVariant): Integer;
    function PedidoVenda_Carregar(const BD: string; aIDPedido: integer): OleVariant;
  end;

implementation

uses
  uServerDM, System.Variants, uSMCadastro, uFields;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSM_Pedido }



{ TSM_Pedido }

function TSM_Pedido.PedidoVenda_AvancaStatus(const BD: string;
  aPedidos: OleVariant): Integer;
const
  SQL = 'insert into PEDIDO_VENDA_STATUS (ID_PEDIDO, STATUS, USUARIO) ' +
        'values (:ID_PEDIDO, :STATUS, :USUARIO)';
var
  DM: TServerDM;
begin
  Result := 0;
  DM := TServerDM.Create(BD);
  try
    try
      getClientDataSet(aPedidos);
      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(SQL);
      cdsLER.First;
      while not cdsLER.Eof do
      begin
        DM.Gravar.ParamByName('ID_PEDIDO').AsInteger := cdsLER.FieldByName('ID_PEDIDO').AsInteger;
        DM.Gravar.ParamByName('STATUS').AsString := cdsLER.FieldByName('STATUS').AsString;
        DM.Gravar.ParamByName('USUARIO').AsString := cdsLER.FieldByName('USUARIO').AsString;
        DM.Gravar.ExecSQL;
        cdsLER.Next
      end;
      Result := 1;
    except
      Result := 0;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

procedure TSM_Pedido.getClientDataSet(aClientDataSet: OleVariant);
begin
  cdsLER.Close;
  cdsLER.Data := aClientDataSet;
  cdsLER.SaveToFile('C:\temp\ler.cds',dfBinary);
end;

function TSM_Pedido.PedidoVenda_Excluir(const BD: string;
  aPedidos: OleVariant): Integer;
const
  SQL = 'delete from PEDIDO_VENDA '+
        'where (ID = :ID) ';
var
  DM: TServerDM;
begin
  Result := 0;
  DM := TServerDM.Create(BD);
  try
    try
      getClientDataSet(aPedidos);
      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(SQL);
      cdsLER.First;
      while not cdsLER.Eof do
      begin
        DM.Gravar.ParamByName('ID').AsInteger := cdsLER.FieldByName('ID_PEDIDO').AsInteger;
        DM.Gravar.ExecSQL;
        cdsLER.Next;
      end;
      Result := 1;
    except
      Result := 0;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSM_Pedido.PedidoVenda_Editar(const BD: string;
  aTabelas: OleVariant): Boolean;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    Pedido_Venda.Connection := DM.Conexao;
    PedidoVenda_Itens.Connection := DM.Conexao;
    Receber.Connection := DM.Conexao;
    TranGravar.Connection := DM.Conexao;
    TranGravar.StartTransaction;

    try
      if (aTabelas[0] <> Null) then
      begin
        cdsPedidoVenda.Data := aTabelas[0];
        cdsPedidoVenda.ApplyUpdates(0);
      end;
      if (aTabelas[1] <> Null) then
      begin
        cdsPedidoVenda_Itens.Data := aTabelas[1];
        cdsPedidoVenda_Itens.ApplyUpdates(0);
      end;
      if (aTabelas[2] <> Null) then
      begin
        cdsReceber.Data := aTabelas[2];
        cdsReceber.ApplyUpdates(0);
      end;

      TranGravar.Commit;
      Result := True;
//      Result := getNotaEntrada(BD, pID);
    except
      on e: Exception do
      begin
        TranGravar.Rollback;
        Result := False;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    cdsPedidoVenda.Close;
    cdsPedidoVenda_Itens.Close;
    cdsReceber.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;


function TSM_Pedido.PedidoVenda_Carregar(const BD: string;
  aIDPedido: integer): OleVariant;
const
  SQL_PEDIDOVENDA     = 'select P.*, C.NOME_RAZAO CLIENTE, R.NOME VENDEDOR '+
                        'from PEDIDO_VENDA P '+
                        'left join CLIENTE C on (C.CODIGO = P.ID_CLIENTE) '+
                        'left join REPRESENTANTE R on (R.CODIGO = P.ID_VENDEDOR) '+
                        'where P.ID = %s';
  SQL_PEDIDOVENDAITEM = 'select pi.ID_PEDIDO, pi.ORDEM, pi.ID_PRODUTO, pi.VUNIT, pi.QTDE,'+
                        'pi.UNIDADE, pi.QTDE_BAIXA, pi.VDESC, pi.SUBTOTAL, pi.TOTAL, P.NOME PRODUTO '+
                        'from PEDIDO_VENDA_ITEM pi '+
                        'left join PRODUTO P on (P.CODIGO = pi.ID_PRODUTO) '+
                        'where pi.ID_PEDIDO = %s';
  SQL_CONTASRECEBER   = 'select R.TIPO, R.ID_TABELA_MASTER, R.NDUP, R.VDUP, R.DVENC '+
                        'from CONTAS_A_RECEBER R '+
                        'where R.TIPO = 1 and '+
                        '      R.ID_TABELA_MASTER = %s';
var
  DM: TServerDM;
  lPedido, lItem, lReceber: OleVariant;
begin
  DM := TServerDM.Create(BD);
  try
    try
     lPedido := DM.LerDataSet(Format(SQL_PEDIDOVENDA, [aIDPedido.ToString]));
     lItem := DM.LerDataSet(Format(SQL_PEDIDOVENDAITEM, [aIDPedido.ToString]));
     lReceber := DM.LerDataSet(Format(SQL_CONTASRECEBER, [aIDPedido.ToString]));
     Result := VarArrayOf([lPedido,lItem,lReceber]);
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSM_Pedido.PedidoVenda_CriaProduto(const BD: string; aProduto,
  aProdComposicao: OleVariant): Integer;
const
  INS_PRODUTO = 'insert into PRODUTO (NOME, PRECO_VENDA, COD_UNIDADE, QTDE_ESTOQUE, PRECO_CUSTO, TIPO_PRODUTO, DT_CADASTRO,'+
                '                     SITUACAO, ULTIMA_ALTERACAO, CALC_CUSTO_COMPOSICAO) '+
                'values (:NOME, :PRECO_VENDA, :COD_UNIDADE, :QTDE_ESTOQUE, :PRECO_CUSTO, :TIPO_PRODUTO, :DT_CADASTRO, :SITUACAO,'+
                '        :ULTIMA_ALTERACAO, :CALC_CUSTO_COMPOSICAO) '+
                'returning CODIGO '+
                '{into :CODIGO}';

  INS_PRODCOMPOSICAO = 'insert into PRODUTO_COMPOSICAO (ID_PRODUTO, ID_MATPRIMA, QTDE, CUSTO_UNIT, CUSTO_TOTAL) '+
                       'values (:ID_PRODUTO, :ID_MATPRIMA, :QTDE, :CUSTO_UNIT, :CUSTO_TOTAL)';
var
  DM: TServerDM;
  lIDProduto: Integer;
begin
  Result := -1;
  DM := TServerDM.Create(BD);
  try
    try
      getClientDataSet(aProduto);
      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(INS_PRODUTO);
      DM.Gravar.ParamByName('NOME').AsString := cdsLER.FieldByName('NOME').AsString;
      DM.Gravar.ParamByName('PRECO_VENDA').AsCurrency := cdsLER.FieldByName('PRECO_VENDA').AsCurrency;
      DM.Gravar.ParamByName('COD_UNIDADE').AsInteger := cdsLER.FieldByName('COD_UNIDADE').AsInteger;
      DM.Gravar.ParamByName('QTDE_ESTOQUE').AsFloat := 0;
      DM.Gravar.ParamByName('PRECO_CUSTO').AsCurrency := cdsLER.FieldByName('PRECO_CUSTO').AsCurrency;
      DM.Gravar.ParamByName('TIPO_PRODUTO').AsString := 'PA';
      DM.Gravar.ParamByName('DT_CADASTRO').AsDate := Date;
      DM.Gravar.ParamByName('SITUACAO').AsString := 'ATIVO';
      DM.Gravar.ParamByName('ULTIMA_ALTERACAO').AsString := cdsLER.FieldByName('ULTIMA_ALTERACAO').AsString;
      DM.Gravar.ParamByName('CALC_CUSTO_COMPOSICAO').AsString := 'S';
      DM.Gravar.ExecSQL;
      lIDProduto := DM.Gravar.Params[10].Value;

      getClientDataSet(aProdComposicao);
      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(INS_PRODCOMPOSICAO);
      cdsLER.First;
      while not cdsLER.Eof do
      begin
        DM.Gravar.ParamByName('ID_PRODUTO').AsInteger := lIDProduto;
        DM.Gravar.ParamByName('ID_MATPRIMA').AsInteger := cdsLER.FieldByName('ID_MATPRIMA').AsInteger;
        DM.Gravar.ParamByName('QTDE').AsFloat := cdsLER.FieldByName('QTDE').AsFloat;
        DM.Gravar.ParamByName('CUSTO_UNIT').AsCurrency := cdsLER.FieldByName('CUSTO_UNIT').AsCurrency;
        DM.Gravar.ParamByName('CUSTO_TOTAL').AsCurrency := cdsLER.FieldByName('CUSTO_TOTAL').AsCurrency;
        DM.Gravar.ExecSQL;
        cdsLER.Next;
      end;
      Result := lIDProduto;
    except
      Result := -1;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;


function TSM_Pedido.PedidoVenda_Adicionar(const BD: string; aTabelas: OleVariant): Boolean;
const
  INS_PEDIDO  = 'insert into PEDIDO_VENDA (EMISSAO, ENTREGA, ID_CLIENTE, ID_VENDEDOR, OBSERVACAO, USUARIO) '+
                'values (:EMISSAO, :ENTREGA, :ID_CLIENTE, :ID_VENDEDOR, :OBSERVACAO, :USUARIO) '+
                'returning ID '+
                '{into :ID}';

  INS_ITEM    = 'insert into PEDIDO_VENDA_ITEM (ID_PEDIDO, ORDEM, ID_PRODUTO, VUNIT, QTDE, UNIDADE, QTDE_BAIXA, VDESC, SUBTOTAL, TOTAL) '+
                'values (:ID_PEDIDO, :ORDEM, :ID_PRODUTO, :VUNIT, :QTDE, :UNIDADE, :QTDE_BAIXA, :VDESC, :SUBTOTAL, :TOTAL)';

  INS_RECEBER = 'insert into CONTAS_A_RECEBER (TIPO, ID_TABELA_MASTER, NDUP, VDUP, DVENC) '+
                'values (:TIPO, :ID_TABELA_MASTER, :NDUP, :VDUP, :DVENC)';
var
  DM: TServerDM;
  lIDPedido: Integer;
begin
  DM := TServerDM.Create(BD);
  try
    try
      if (aTabelas[0] <> Null) then
      begin
        getClientDataSet(aTabelas[0]);
        DM.Gravar.SQL.Clear;
        DM.Gravar.SQL.Add(INS_PEDIDO);
        DM.Gravar.ParamByName('EMISSAO').AsDate := cdsLER.FieldByName('EMISSAO').AsDateTime;
        DM.Gravar.ParamByName('ENTREGA').AsDate := cdsLER.FieldByName('ENTREGA').AsDateTime;
        DM.Gravar.ParamByName('ID_CLIENTE').AsInteger := cdsLER.FieldByName('ID_CLIENTE').AsInteger;
        DM.Gravar.ParamByName('ID_VENDEDOR').AsInteger := cdsLER.FieldByName('ID_VENDEDOR').AsInteger;
        DM.Gravar.ParamByName('OBSERVACAO').AsString := cdsLER.FieldByName('OBSERVACAO').AsString;
        DM.Gravar.ParamByName('USUARIO').AsString := cdsLER.FieldByName('USUARIO').AsString;
        DM.Gravar.ExecSQL;
        lIDPedido := DM.Gravar.Params[6].Value;
      end;

//      *****************ITENS******************************
      if (aTabelas[1] <> Null) then
      begin
        getClientDataSet(aTabelas[1]);
        cdsLER.First;
        while not cdsLER.Eof do
        begin
          DM.Gravar.SQL.Clear;
          DM.Gravar.SQL.Add(INS_ITEM);
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
      end;

//      *****************RECEBER******************************
      if (aTabelas[2] <> Null) then
      begin
        getClientDataSet(aTabelas[2]);
        cdsLER.First;
        while not cdsLER.Eof do
        begin
          DM.Gravar.SQL.Clear;
          DM.Gravar.SQL.Add(INS_RECEBER);
          DM.Gravar.ParamByName('TIPO').AsInteger := 1;
          DM.Gravar.ParamByName('ID_TABELA_MASTER').AsInteger := lIDPedido;
          DM.Gravar.ParamByName('NDUP').AsInteger := cdsLER.FieldByName('NDUP').AsInteger;
          DM.Gravar.ParamByName('VDUP').AsCurrency := cdsLER.FieldByName('VDUP').AsCurrency;
          DM.Gravar.ParamByName('DVENC').AsDate := cdsLER.FieldByName('DVENC').AsDateTime;
          DM.Gravar.ExecSQL;
          cdsLER.Next;
        end;
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.

