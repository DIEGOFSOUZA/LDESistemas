unit uSM_Pedido;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet, uServerDM;

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
    PedidoVenda_ItensVDESC: TFMTBCDField;
    PedidoVenda_ItensSUBTOTAL: TFMTBCDField;
    PedidoVenda_ItensTOTAL: TFMTBCDField;
    PedidoVenda_ItensPRODUTO: TStringField;
    ReceberID_TABELA_MASTER: TIntegerField;
    ReceberNDUP: TIntegerField;
    ReceberVDUP: TFMTBCDField;
    ReceberDVENC: TDateField;
    ReceberTIPO: TIntegerField;
    Pedido_Venda_IMG: TFDQuery;
    dspIMG: TDataSetProvider;
    cdsIMG: TClientDataSet;
    Pedido_Venda_IMGID_PEDIDO: TIntegerField;
    PedidoVenda_ItensQTDE_A_BAIXAR: TBCDField;
    PedidoVenda_ItensQTDE_BAIXADA: TBCDField;
    Pedido_VendaGERAR_ORDEM_PRODUCAO: TIntegerField;
    Pedido_Venda_IMGSEQUENCIA: TIntegerField;
    Pedido_Venda_IMGPATH_IMAGEM: TStringField;
    ReceberDESCRI: TStringField;
  private
    procedure getClientDataSet(aClientDataSet: OleVariant);
    procedure GeraProducao(aDM: TServerDM; aIdPedido: integer; aUsuario: string);
    procedure BaixaProducao(aDM: TServerDM; aLote: string; aIdPedido: integer);
    procedure BaixaPedido(aDM: TServerDM; aIdPedido: Integer);
  public
    function PedidoVenda_Adicionar(const BD: string; aTabelas: OleVariant): Boolean;
    function PedidoVenda_Editar(const BD: string; aTabelas: OleVariant): Boolean;
    function PedidoVenda_CriaProduto(const BD: string; aProduto: OleVariant; aProdComposicao: OleVariant): Integer;
    function PedidoVenda_AvancaStatus(const BD: string; aPedidos: OleVariant): Integer;
    function PedidoVenda_Excluir(const BD: string; aPedidos: OleVariant): Integer;
    function PedidoVenda_Carregar(const BD: string; aIDPedido: integer): OleVariant;

    //***Relatorio***
    function PedidoVenda_RelA3(const BD: string; aIdPedido: integer): OleVariant;
  end;

implementation

uses
  System.Variants, uSMCadastro, uFields;

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
  lPedido: Integer;
  lStatus: string;
begin
  Result := 0;
  DM := TServerDM.Create(BD);
  try
    try
      getClientDataSet(aPedidos);
      cdsLER.First;
      while not cdsLER.Eof do
      begin
        lPedido := cdsLER.FieldByName('ID_PEDIDO').AsInteger;
        lStatus := cdsLER.FieldByName('STATUS').AsString;
        if ((lStatus = 'PRODUÇÃO') and (cdsLER.FieldByName('GERAR_ORDEM_PRODUCAO').AsInteger = 1)) then
          GeraProducao(DM, lPedido, cdsLER.FieldByName('USUARIO').AsString);
//        begin
//          if (lStatus = 'PRODUÇÃO') then
//            GeraProducao(DM, lPedido, cdsLER.FieldByName('USUARIO').AsString);
//          if (lStatus = 'CONCLUÍDO') then
//            BaixaProducao(DM, 'PEDV' + FormatFloat('0000', lPedido), lPedido);
//        end;

        if (lStatus = 'CONCLUÍDO') then
        begin
          BaixaProducao(DM, 'PEDV' + FormatFloat('0000', lPedido), lPedido);
          BaixaPedido(DM, lPedido);
        end;

        DM.Gravar.SQL.Clear;
        DM.Gravar.SQL.Add(SQL);
        DM.Gravar.ParamByName('ID_PEDIDO').AsInteger := lPedido;
        DM.Gravar.ParamByName('STATUS').AsString := lStatus;
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
//  cdsLER.SaveToFile('C:\temp\ler.cds',dfBinary);
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

function TSM_Pedido.PedidoVenda_Editar(const BD: string; aTabelas: OleVariant): Boolean;
var
  DM: TServerDM;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  try
    Pedido_Venda.Connection := DM.Conexao;
    PedidoVenda_Itens.Connection := DM.Conexao;
    Receber.Connection := DM.Conexao;
    Pedido_Venda_IMG.Connection := DM.Conexao;
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
      if (aTabelas[3] <> Null) then
      begin
        cdsIMG.Data := aTabelas[3];
        cdsIMG.ApplyUpdates(0);
      end;

      TranGravar.Commit;
      Result := True;
    except
      on e: Exception do
      begin
        TranGravar.Rollback;
        Result := False;
      end;
    end;
  finally
    cdsPedidoVenda.Close;
    cdsPedidoVenda_Itens.Close;
    cdsReceber.Close;
    cdsIMG.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSM_Pedido.PedidoVenda_RelA3(const BD: string; aIdPedido: integer): OleVariant;
const
  PEDIDO  = 'select P.ID, P.EMISSAO, P.ENTREGA, cast(P.ENTRADA as date) ENTRADA, P.OBSERVACAO, R.NOME VENDEDOR, C.NOME_RAZAO CLIENTE,'+
            '       C.ENDERECO, C.NUMERO, C.BAIRRO, C.CEP, C.CIDADE, C.UF ESTADO '+
            'from PEDIDO_VENDA P '+
            'left join CLIENTE C on (C.CODIGO = P.ID_CLIENTE) '+
            'left join REPRESENTANTE R on (R.CODIGO = P.ID_VENDEDOR) '+
            'where P.ID = %s';
  ITEM    = 'select I.ID_PRODUTO, P.NOME PRODUTO, I.UNIDADE,'+
            'cast(I.QTDE as double precision) QTDE, cast(I.VUNIT as double precision)VUNIT,'+
            'cast(I.VDESC as double precision) VDESC, cast(I.TOTAL as double precision)TOTAL '+
            'from PEDIDO_VENDA_ITEM I '+
            'left join PRODUTO P on (P.CODIGO = I.ID_PRODUTO) '+
            'where I.ID_PEDIDO = %s';
  RECEBER = 'select C.DESCRI, C.DVENC, C.VDUP '+
            'from CONTAS_A_RECEBER C '+
            'where C.TIPO = 1 and '+
            '      C.ID_TABELA_MASTER = %s';
  IMG     = 'select I.SEQUENCIA, I.PATH_IMAGEM '+
            'from PEDIDO_VENDA_IMG I '+
            'where I.ID_PEDIDO = %s and '+
            '      I.SEQUENCIA < 4';
var
  DM: TServerDM;
  lPedido, lItem, lReceber, lImagem: OleVariant;
begin
  DM := TServerDM.Create(BD);
  try
    try
      lPedido := DM.LerDataSet(Format(PEDIDO, [aIDPedido.ToString]));
      lItem := DM.LerDataSet(Format(ITEM, [aIDPedido.ToString]));
      lReceber := DM.LerDataSet(Format(RECEBER, [aIDPedido.ToString]));
      lImagem := DM.LerDataSet(Format(IMG, [aIDPedido.ToString]));
      Result := VarArrayOf([lPedido, lItem, lReceber, lImagem]);
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
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
                        'pi.UNIDADE, pi.QTDE_A_BAIXAR, pi.VDESC, pi.SUBTOTAL, pi.TOTAL, P.NOME PRODUTO '+
                        'from PEDIDO_VENDA_ITEM pi '+
                        'left join PRODUTO P on (P.CODIGO = pi.ID_PRODUTO) '+
                        'where pi.ID_PEDIDO = %s';
  SQL_CONTASRECEBER   = 'select R.TIPO, R.ID_TABELA_MASTER, R.NDUP, R.VDUP, R.DVENC, R.DESCRI '+
                        'from CONTAS_A_RECEBER R '+
                        'where R.TIPO = 1 and '+
                        '      R.ID_TABELA_MASTER = %s';
  SQL_PEDIDO_IMG      = 'select ID_PEDIDO, SEQUENCIA, PATH_IMAGEM '+
                        'from PEDIDO_VENDA_IMG '+
                        'where ID_PEDIDO = %s';
var
  DM: TServerDM;
  lPedido, lItem, lReceber, lImagem: OleVariant;
begin
  DM := TServerDM.Create(BD);
  try
    try
      lPedido := DM.LerDataSet(Format(SQL_PEDIDOVENDA, [aIDPedido.ToString]));
      lItem := DM.LerDataSet(Format(SQL_PEDIDOVENDAITEM, [aIDPedido.ToString]));
      lReceber := DM.LerDataSet(Format(SQL_CONTASRECEBER, [aIDPedido.ToString]));
      lImagem := DM.LerDataSet(Format(SQL_PEDIDO_IMG, [aIDPedido.ToString]));
      Result := VarArrayOf([lPedido, lItem, lReceber, lImagem]);
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
  INS_PEDIDO  = 'insert into PEDIDO_VENDA (EMISSAO, ENTREGA, ID_CLIENTE, ID_VENDEDOR, OBSERVACAO, USUARIO, GERAR_ORDEM_PRODUCAO) '+
                'values (:EMISSAO, :ENTREGA, :ID_CLIENTE, :ID_VENDEDOR, :OBSERVACAO, :USUARIO, :GERAR_ORDEM_PRODUCAO) '+
                'returning ID '+
                '{into :ID}';

  INS_ITEM    = 'insert into PEDIDO_VENDA_ITEM (ID_PEDIDO, ORDEM, ID_PRODUTO, VUNIT, QTDE, UNIDADE, QTDE_A_BAIXAR, VDESC, SUBTOTAL, TOTAL) '+
                'values (:ID_PEDIDO, :ORDEM, :ID_PRODUTO, :VUNIT, :QTDE, :UNIDADE, :QTDE_A_BAIXAR, :VDESC, :SUBTOTAL, :TOTAL)';

  INS_RECEBER = 'insert into CONTAS_A_RECEBER (TIPO, ID_TABELA_MASTER, NDUP, VDUP, DVENC, DESCRI) '+
                'values (:TIPO, :ID_TABELA_MASTER, :NDUP, :VDUP, :DVENC, :DESCRI)';

  INS_IMG     = 'insert into PEDIDO_VENDA_IMG (ID_PEDIDO, SEQUENCIA, PATH_IMAGEM) '+
                'values (:ID_PEDIDO, :SEQUENCIA, :PATH_IMAGEM)';
var
  DM: TServerDM;
  lIDPedido: Integer;
  lMS: TStream;
begin
  Result := False;
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
        DM.Gravar.ParamByName('GERAR_ORDEM_PRODUCAO').AsInteger := cdsLER.FieldByName('GERAR_ORDEM_PRODUCAO').AsInteger;
        DM.Gravar.ExecSQL;
        lIDPedido := DM.Gravar.Params[7].Value;
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
          DM.Gravar.ParamByName('QTDE_A_BAIXAR').AsFloat := cdsLER.FieldByName('QTDE_A_BAIXAR').AsFloat;
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
          DM.Gravar.ParamByName('DESCRI').AsString := cdsLER.FieldByName('DESCRI').AsString;
          DM.Gravar.ExecSQL;
          cdsLER.Next;
        end;
      end;

//      *****************IMAGEM******************************
      if (aTabelas[3] <> Null) then
      begin
//        lMS := TMemoryStream.Create;
        try
          getClientDataSet(aTabelas[3]);
          DM.Gravar.SQL.Clear;
          DM.Gravar.SQL.Add(INS_IMG);
          while not cdsLER.Eof do
          begin
//            lMS := cdsLER.CreateBlobStream(cdsLER.FieldByName('IMAGEM'), bmRead);
            DM.Gravar.ParamByName('ID_PEDIDO').AsInteger := lIDPedido;
            DM.Gravar.ParamByName('SEQUENCIA').AsInteger := cdsLER.FieldByName('SEQUENCIA').AsInteger;
//            DM.Gravar.ParamByName('IMAGEM').LoadFromStream(lMS, ftBlob);
            DM.Gravar.ParamByName('PATH_IMAGEM').AsString := cdsLER.FieldByName('PATH_IMAGEM').AsString;
            DM.Gravar.ExecSQL;
            cdsLER.Next;
          end;
        finally
//          FreeAndNil(lMS);
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

procedure TSM_Pedido.BaixaPedido(aDM: TServerDM; aIdPedido: Integer);
const
  UPD_ITENS_PEDIDO = 'update PEDIDO_VENDA_ITEM ' +
                     'set QTDE_BAIXADA = QTDE_A_BAIXAR ' +
                     'where (ID_PEDIDO = :ID_PEDIDO)';
begin
  try
    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(UPD_ITENS_PEDIDO);
    aDM.Gravar.ParamByName('ID_PEDIDO').AsInteger := aIdPedido;
    aDM.Gravar.ExecSQL;
  except

  end;
end;

procedure TSM_Pedido.BaixaProducao(aDM: TServerDM; aLote: string; aIdPedido: integer);
const
  UPD_LOTE       = 'update LOTE '+
                   'set STATUS = ''FINALIZADO'' '+
                   'where (LOTE = :LOTE)';

  UPD_LOTE_ITENS = 'update LOTE_ITENS '+
                   'set QTDE_FECHADA = QTDE '+
                   'where (ID_LOTE = :ID_LOTE)';

  UPD_LOTE_MP    = 'update LOTE_MATPRIMA m '+
                   'set QTDE_FECHADA = QTDE '+
                   'where (ID_LOTE = :ID_LOTE)';

  SQL = 'select l.id from lote l '+
        'where l.id_pedido = %s';
begin
  if aDM.CDSIsEmpty(Format(SQL, [aIdPedido.ToString])) then
    Exit;

  try
    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(UPD_LOTE);
    aDM.Gravar.ParamByName('LOTE').AsString := aLote;
    aDM.Gravar.ExecSQL;

    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(UPD_LOTE_ITENS);
    aDM.Gravar.ParamByName('ID_LOTE').AsString := aLote;
    aDM.Gravar.ExecSQL;

    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(UPD_LOTE_MP);
    aDM.Gravar.ParamByName('ID_LOTE').AsString := aLote;
    aDM.Gravar.ExecSQL;
  except

  end;
end;

procedure TSM_Pedido.GeraProducao(aDM: TServerDM; aIdPedido: integer; aUsuario: string);
const
  INS_LOTE      = 'insert into LOTE (LOTE, EMISSAO, OBS, STATUS, GERA_MATPRIMA, USUARIO, LOTE_ACERTO, ID_PEDIDO) '+
                  'values(:LOTE, :EMISSAO, :OBS, :STATUS, :GERA_MATPRIMA, :USUARIO, :LOTE_ACERTO, :ID_PEDIDO)';

  INS_LOTEITENS = 'insert into LOTE_ITENS (ID_LOTE, CODPRO, QTDE, QTDE_FECHADA, COD_UM, ENTSAI, DESCRI_ITEM) '+
                  'select :ID_LOTE, I.ID_PRODUTO,'+
                  '       (I.QTDE_A_BAIXAR - cast(case when P.QTDE_ESTOQUE < 0 then 0 else p.qtde_estoque end as numeric(15,3))), 0, coalesce(P.CONV_UNIDADE, P.COD_UNIDADE), ''ENTRADA'', P.NOME '+
                  'from PEDIDO_VENDA_ITEM I '+
                  'left join PRODUTO P on (P.CODIGO = I.ID_PRODUTO) '+
                  'where I.ID_PEDIDO = :ID_PEDIDO and '+
                  '      P.TIPO_PRODUTO <> ''S'' and '+
                  '      P.QTDE_ESTOQUE < I.QTDE_A_BAIXAR';

  INS_LOTE_MP   = 'insert into LOTE_MATPRIMA (ID_LOTE, ID_MATPRIMA, QTDE, QTDE_FECHADA) '+
                  'select :ID_LOTE, C.ID_MATPRIMA,'+
                  '       (C.QTDE * I.QTDE_A_BAIXAR) QTDE_MATPRIMA, cast(0 as integer) '+
                  'from PEDIDO_VENDA_ITEM I '+
                  'left join PRODUTO P on (P.CODIGO = I.ID_PRODUTO) '+
                  'left join PRODUTO_COMPOSICAO C on (C.ID_PRODUTO = P.CODIGO) '+
                  'where I.ID_PEDIDO = :ID_PEDIDO and '+
                  '      P.QTDE_ESTOQUE < I.QTDE_A_BAIXAR and '+
                  '      P.TIPO_PRODUTO <> ''S'' and '+
                  '      C.ID_MATPRIMA is not null '+
                  'order by I.ORDEM';

  SQL = 'select first 1 I.ID_PRODUTO '+
        'from PEDIDO_VENDA_ITEM I '+
        'left join PRODUTO P on (P.CODIGO = I.ID_PRODUTO) '+
        'where I.ID_PEDIDO = %s and '+
        '      P.TIPO_PRODUTO <> ''S'' and '+
        '      P.QTDE_ESTOQUE < I.QTDE_A_BAIXAR';

begin
  if aDM.CDSIsEmpty(Format(SQL,[aIdPedido.ToString])) then
    Exit;

  try
    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(INS_LOTE);
    aDM.Gravar.ParamByName('LOTE').AsString := 'PEDV' + FormatFloat('0000', aIdPedido);
    aDM.Gravar.ParamByName('EMISSAO').AsDate := Date;
    aDM.Gravar.ParamByName('OBS').AsString := 'LOTE PARA ATENDER PEDIDO Nº ' + FormatFloat('0000', aIdPedido);
    aDM.Gravar.ParamByName('STATUS').AsString := 'PENDENTE';
    aDM.Gravar.ParamByName('GERA_MATPRIMA').AsString := 'S';
    aDM.Gravar.ParamByName('USUARIO').AsString := aUsuario+'|'+FormatDateTime('dd/mm/yy|hh:mm',Now);
    aDM.Gravar.ParamByName('LOTE_ACERTO').AsString := 'N';
    aDM.Gravar.ParamByName('ID_PEDIDO').AsInteger := aIdPedido;
    aDM.Gravar.ExecSQL;

    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(INS_LOTEITENS);
    aDM.Gravar.ParamByName('ID_LOTE').AsString := 'PEDV' + FormatFloat('0000', aIdPedido);
    aDM.Gravar.ParamByName('ID_PEDIDO').AsInteger := aIdPedido;
    aDM.Gravar.ExecSQL;

    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(INS_LOTE_MP);
    aDM.Gravar.ParamByName('ID_LOTE').AsString := 'PEDV' + FormatFloat('0000', aIdPedido);
    aDM.Gravar.ParamByName('ID_PEDIDO').AsInteger := aIdPedido;
    aDM.Gravar.ExecSQL;
  except

  end;
end;

end.

