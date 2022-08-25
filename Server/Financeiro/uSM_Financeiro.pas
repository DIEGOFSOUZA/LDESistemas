unit uSM_Financeiro;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,System.Variants;

type
  TSM_Financeiro = class(TDSServerModule)
    TranGravar: TFDTransaction;
    fdqryForma: TFDQuery;
    fdqryParcelamento: TFDQuery;
    dspFormaPagto: TDataSetProvider;
    dsFormaPagto: TClientDataSet;
    sFormaPagto: TDataSource;
    fdqryFormaDESCRI: TStringField;
    fdqryFormaATIVO: TStringField;
    fdqryFormaUSO_PDV: TStringField;
    fdqryParcelamentoID_PAGTOFORMA: TIntegerField;
    fdqryParcelamentoID: TIntegerField;
    fdqryParcelamentoDESCRI: TStringField;
    fdqryParcelamentoNUM_PARCELAS: TIntegerField;
    fdqryParcelamentoINTV_PARCELAS: TIntegerField;
    fdqryParcelamentoPRIMEIRA_PARC: TIntegerField;
    fdqryParcelamentoACRESCIMO: TFMTBCDField;
    fdqryParcelamentoUSO_COMPRAS: TStringField;
    fdqryParcelamentoUSO_VENDAS: TStringField;
    fdqryFormaID_PAGTOFORMA: TIntegerField;
  private
    { Private declarations }
  public
    function setFormaPagto(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getFormaPagto(const BD: string; pID: integer): OleVariant;

    function setBaixaRestaura(const BD: string; pBaixaParcial:Boolean;
                                         pVlDiferenca : Currency;
                                         pReceberPagar:string; pBaixaRestaura,
                                         pTipo: string; pID: Integer; pOrdem: string;
                                         pData: string; pJuros, pDesconto,
                                         pValor: Currency; pUsuario, pIdHistorico,
                                         pIdConta, pIdCaixa: string; pNumCheque: integer): Boolean;
  end;

implementation

uses
  uServerDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSM_Financeiro }

function TSM_Financeiro.getFormaPagto(const BD: string; pID: integer): OleVariant;
const
  SQL = 'SELECT r.ID_PAGTOFORMA,r.ID,r.DESCRI,r.NUM_PARCELAS,'+
        'r.INTV_PARCELAS,r.INTV_PARCELAS,r.PRIMEIRA_PARC,r.ACRESCIMO,'+
        'iif(r.USO_COMPRAS = ''S'',''Sim'',''Não'')uso_compras,iif(r.USO_VENDAS = ''S'',''Sim'',''Não'')uso_vendas '+
        'FROM PAGTO_PARCELAMENTO r '+
        'where r.ID_PAGTOFORMA = %s';
var
  DM: TServerDM;
  lID: Integer;
  lGrid : OleVariant;
begin
  lID := pID;
  lGrid := 'null';
  DM := TServerDM.Create(BD);
  try
    fdqryForma.Connection := DM.Conexao;
    fdqryParcelamento.Connection := DM.Conexao;
    TranGravar.Connection := DM.Conexao;
    TranGravar.StartTransaction;

    if (lID = 0) then
      lID := DM.LerDataSetInteger('select max(ID_PAGTOFORMA) id from PAGTO_FORMA', 'id');

    if ((lID > 0) or (lID = -1)) then
    begin
      fdqryForma.ParamByName('ID_PAGTOFORMA').AsInteger := lID;

      dsFormaPagto.close;
      dsFormaPagto.Open;

      lGrid := DM.LerDataSet(Format(SQL,[IntToStr(lID)])) ;

      Result := VarArrayOf([dsFormaPagto.Data,lGrid]) ;
    end
    else
    begin
      Result := VarArrayOf(['null','null']) ;
      raise Exception.Create('Documento não encontrado.');
    end;

  finally
    if TranGravar.Active then
      TranGravar.Commit;
    dsFormaPagto.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSM_Financeiro.setBaixaRestaura(const BD: string; pBaixaParcial:Boolean;
                                         pVlDiferenca : Currency;
                                         pReceberPagar:string; pBaixaRestaura,
                                         pTipo: string; pID: Integer; pOrdem: string;
                                         pData: string; pJuros, pDesconto,
                                         pValor: Currency; pUsuario, pIdHistorico,
                                         pIdConta, pIdCaixa: string; pNumCheque: integer): Boolean;
const
  SQLBaixa = 'update PDV_RECEBER a '+
             'set a.DT_BAIXA = :DT_BAIXA '+
             ',a.JUROS = :JUROS '+
             ',a.DESCONTO = :DESCONTO '+
             ',a.VL_PAGO = :VL_PAGO '+
             ',a.USUARIO_BAIXA = :USUARIO_BAIXA '+
             ',a.ID_HISTORICO = :ID_HISTORICO '+
             ',a.ID_CONTA = :ID_CONTA '+
             ',a.BAIXA_ID_CAIXA = :BAIXA_ID_CAIXA '+
             'where a.TIPO = :TIPO and a.ID = :ID '+
             'and a.ORDEM = :ORDEM';

  SQLResta = 'update PDV_RECEBER PR '+
             'set PR.DT_BAIXA = null,'+
             '    PR.VL_PAGO = null,'+
             '    PR.USUARIO_BAIXA = null,'+
             '    PR.BAIXA_ID_CAIXA = null,'+
             '    PR.ID_CONTA = null,'+
             '    PR.ID_HISTORICO = null,'+
             '    PR.JUROS = null,'+
             '    PR.DESCONTO = null '+
             'where PR.TIPO = :TIPO and '+
             '      PR.ID = :ID and '+
             '     PR.ORDEM = :ORDEM';

  SQLLog = 'insert into LOG_BAIXA_RESTAURA (TIPO, BAIXA_RESTAURA, ID_DUPLICATA,'+
           'TIPO_DUPLICATA, ORDEM_DUPLICATA, DATA_HORA,USUARIO, VALOR) '+
           'values (:TIPO, :BAIXA_RESTAURA, :ID_DUPLICATA, :TIPO_DUPLICATA,'+
           ':ORDEM_DUPLICATA, :DATA_HORA,:USUARIO, :VALOR)';

  SQLPar = 'insert into PDV_RECEBER_PARCIAL (ID, TIPO, FORMA_PAGTO, ORDEM, DT_VENC, VALOR, USUARIO_EMISSAO, DT_BAIXA,'+
           '                                 VL_PAGO, JUROS, DESCONTO, USUARIO_BAIXA, ID_HISTORICO, ID_CONTA, ID_CAIXA) '+
           'values (:ID, :TIPO, :FORMA_PAGTO, :ORDEM, :DT_VENC, :VALOR, :USUARIO_EMISSAO, :DT_BAIXA, :VL_PAGO, :JUROS,'+
           '        :DESCONTO, :USUARIO_BAIXA, :ID_HISTORICO, :ID_CONTA, :ID_CAIXA)';

  SQLUpR = 'update PDV_RECEBER A '+
           'set A.VALOR = :VALOR '+
           'where A.TIPO = :TIPO and '+
           '      A.ID = :ID and '+
           '      A.ORDEM = :ORDEM';
  //***Contas a Pagar
  SQLCaP = 'update NOTA_ENTRADA_PAGAR A '+
           'set A.BAIXA_DATA = :BAIXA_DATA,'+
           '    A.BAIXA_VALOR = :BAIXA_VALOR,'+
           '    A.BAIXA_USUARIO = :BAIXA_USUARIO,'+
           '    A.ID_HISTORICO = :ID_HISTORICO,'+
           '    A.ID_CONTA = :ID_CONTA,'+
           '    A.ID_CAIXA = :ID_CAIXA,'+
           '    A.VDESC = :VDESC,'+
           '    A.VJUROS = :VJUROS,'+
           '    A.CHEQUE_NUMERO = :CHEQUE_NUMERO '+
           'where A.ID_NOTAENTRADA = :ID_NOTAENTRADA and '+
           '      A.NDUP = :NDUP';

  SQLParcCAP = 'insert into NOTA_ENTRADA_PARCIAL (ID_NOTAENTRADA, NDUP, VALOR, USUARIO, DATA_HORA, JUROS, DESCONTO, HISTORICO, CONTA,'+
               '                                  ID_CAIXA, NUM_CHEQUE) '+
               'values (:ID_NOTAENTRADA, :NDUP, :VALOR, :USUARIO, :DATA_HORA, :JUROS, :DESCONTO, :HISTORICO, :CONTA, :ID_CAIXA,'+
               '        :NUM_CHEQUE)';

  SQLUpCAP = 'update NOTA_ENTRADA_PAGAR '+
             'set VDUP = :VDUP '+
             'where (ID_NOTAENTRADA = :ID_NOTAENTRADA) and '+
             '      (NDUP = :NDUP)';
var
  DM: TServerDM;
  lQuery: TFDQuery;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  lQuery := TFDQuery.Create(nil);
  lQuery.Connection := DM.Conexao;
  try
    try
      if pReceberPagar = 'CAR' then
      //*******Contas a Receber***********
      begin
      if pBaixaParcial then
      begin
        lQuery.SQL.Clear;
        lQuery.SQL.Add(SQLPar);
        lQuery.Params.ParamByName('TIPO').AsString := pTipo;
        lQuery.Params.ParamByName('ID').AsInteger := pID;
        lQuery.Params.ParamByName('ORDEM').AsString := pOrdem;
        lQuery.Params.ParamByName('FORMA_PAGTO').AsString := 'PARCIAL';
        lQuery.Params.ParamByName('DT_VENC').AsDate := Date;
        lQuery.Params.ParamByName('VALOR').AsCurrency := pValor;
        lQuery.Params.ParamByName('USUARIO_EMISSAO').AsString := pUsuario + '|' + FormatDateTime('dd/mm/yy|hh:mm', Now);
        lQuery.Params.ParamByName('DT_BAIXA').AsDate := StrToDate(pData);
        lQuery.Params.ParamByName('VL_PAGO').AsCurrency := pValor;
        lQuery.Params.ParamByName('JUROS').AsCurrency := pJuros;
        lQuery.Params.ParamByName('DESCONTO').AsCurrency := pDesconto;
        lQuery.Params.ParamByName('USUARIO_BAIXA').AsString := pUsuario + '|' + FormatDateTime('dd/mm/yy|hh:mm', Now);
        lQuery.Params.ParamByName('ID_HISTORICO').AsInteger := StrToInt(pIdHistorico);
        lQuery.Params.ParamByName('ID_CONTA').AsString := pIdConta;
        if pIdCaixa <> 'null' then
          lQuery.Params.ParamByName('ID_CAIXA').AsInteger := StrToInt(pIdCaixa)
        else
          lQuery.Params.ParamByName('ID_CAIXA').Clear;
        lQuery.ExecSQL;

        //Update tab PDV_RECEBER
        lQuery.SQL.Clear;
        lQuery.SQL.Add(SQLUpR);
        lQuery.Params.ParamByName('TIPO').AsString := pTipo;
        lQuery.Params.ParamByName('ID').AsInteger := pID;
        lQuery.Params.ParamByName('ORDEM').AsString := pOrdem;
        lQuery.Params.ParamByName('VALOR').AsCurrency := pVlDiferenca;
        lQuery.ExecSQL;
      end
      else
      begin
        if (pBaixaRestaura = 'B') then
        begin
          lQuery.SQL.Clear;
          lQuery.SQL.Add(SQLBaixa);
          lQuery.Params.ParamByName('dt_baixa').AsDate := StrToDate(pData);
          lQuery.Params.ParamByName('juros').AsCurrency := pJuros;
          lQuery.Params.ParamByName('desconto').AsCurrency := pDesconto;
          lQuery.Params.ParamByName('vl_pago').AsCurrency := pValor;
          lQuery.Params.ParamByName('usuario_baixa').AsString := pUsuario + '|' + FormatDateTime('dd/mm/yy|hh:mm', Now);
          lQuery.Params.ParamByName('id_historico').AsInteger := StrToInt(pIdHistorico);
          lQuery.Params.ParamByName('id_conta').AsString := pIdConta;
          if pIdCaixa <> 'null' then
            lQuery.Params.ParamByName('baixa_id_caixa').AsInteger := StrToInt(pIdCaixa)
          else
            lQuery.Params.ParamByName('baixa_id_caixa').Clear;
          lQuery.Params.ParamByName('tipo').AsString := pTipo;
          lQuery.Params.ParamByName('id').AsInteger := pID;
          lQuery.Params.ParamByName('ordem').AsString := pOrdem;
          lQuery.ExecSQL;
        end
        else
        begin
          lQuery.SQL.Clear;
          lQuery.SQL.Add(SQLResta);
          lQuery.Params.ParamByName('tipo').AsString := pTipo;
          lQuery.Params.ParamByName('id').AsInteger := pID;
          lQuery.Params.ParamByName('ordem').AsString := pOrdem;
          lQuery.ExecSQL;
        end;
      end;
      end
      else if pReceberPagar = 'CAP' then
      //*******Contas a Pagar***********
      begin
        if pBaixaParcial then
        begin
          lQuery.SQL.Clear;
          lQuery.SQL.Add(SQLParcCAP);
          lQuery.Params.ParamByName('ID_NOTAENTRADA').AsInteger := pID;
          lQuery.Params.ParamByName('NDUP').AsInteger := StrToInt(pOrdem);
          lQuery.Params.ParamByName('VALOR').AsCurrency := pValor;
          lQuery.Params.ParamByName('USUARIO').AsString := pUsuario;
          lQuery.Params.ParamByName('DATA_HORA').AsDate := Now;
          lQuery.Params.ParamByName('JUROS').AsCurrency := pJuros;
          lQuery.Params.ParamByName('DESCONTO').AsCurrency := pDesconto;
          lQuery.Params.ParamByName('HISTORICO').AsInteger := StrToInt(pIdHistorico);
          lQuery.Params.ParamByName('CONTA').AsString := pIdConta;
          if pIdCaixa <> 'null' then
            lQuery.Params.ParamByName('ID_CAIXA').AsInteger := StrToInt(pIdCaixa)
          else
            lQuery.Params.ParamByName('ID_CAIXA').Clear;
          if (pNumCheque > 0) then
              lQuery.Params.ParamByName('NUM_CHEQUE').AsInteger := pNumCheque
            else
              lQuery.Params.ParamByName('NUM_CHEQUE').Clear;
          lQuery.ExecSQL;

          //Update tab NOTA_ENTRADA_PAGAR
          lQuery.SQL.Clear;
          lQuery.SQL.Add(SQLUpCAP);
          lQuery.Params.ParamByName('ID_NOTAENTRADA').AsInteger := pID;
          lQuery.Params.ParamByName('NDUP').AsInteger := StrToInt(pOrdem);
          lQuery.Params.ParamByName('VDUP').AsCurrency := pVlDiferenca;
          lQuery.ExecSQL;
        end
        else
        begin
          if (pBaixaRestaura = 'B') then
          begin
            lQuery.SQL.Clear;
            lQuery.SQL.Add(SQLCaP);
            lQuery.Params.ParamByName('BAIXA_DATA').AsDate := StrToDate(pData);
            lQuery.Params.ParamByName('BAIXA_VALOR').AsCurrency := pValor;
            lQuery.Params.ParamByName('BAIXA_USUARIO').AsString := pUsuario + '|' + FormatDateTime('dd/mm/yy|hh:mm', Now);
            lQuery.Params.ParamByName('ID_HISTORICO').AsInteger := StrToInt(pIdHistorico);
            lQuery.Params.ParamByName('ID_CONTA').AsString := pIdConta;
            if pIdCaixa <> 'null' then
              lQuery.Params.ParamByName('ID_CAIXA').AsInteger := StrToInt(pIdCaixa)
            else
              lQuery.Params.ParamByName('ID_CAIXA').Clear;
            lQuery.Params.ParamByName('VDESC').AsCurrency := pDesconto;
            lQuery.Params.ParamByName('VJUROS').AsCurrency := pJuros;
            if (pNumCheque > 0) then
              lQuery.Params.ParamByName('CHEQUE_NUMERO').AsInteger := pNumCheque
            else
              lQuery.Params.ParamByName('CHEQUE_NUMERO').Clear;
            lQuery.Params.ParamByName('ID_NOTAENTRADA').AsInteger := pID;
            lQuery.Params.ParamByName('NDUP').AsInteger := StrToInt(pOrdem);
            lQuery.ExecSQL;
          end
          else
          begin
            lQuery.SQL.Clear;
            lQuery.SQL.Add(SQLCaP);
            lQuery.Params.ParamByName('BAIXA_DATA').Clear;
            lQuery.Params.ParamByName('BAIXA_VALOR').Clear;
            lQuery.Params.ParamByName('BAIXA_USUARIO').Clear;
            lQuery.Params.ParamByName('ID_HISTORICO').Clear;
            lQuery.Params.ParamByName('ID_CONTA').Clear;
            lQuery.Params.ParamByName('ID_CAIXA').Clear;
            lQuery.Params.ParamByName('VDESC').Clear;
            lQuery.Params.ParamByName('VJUROS').Clear;
            lQuery.Params.ParamByName('CHEQUE_NUMERO').Clear;
            lQuery.Params.ParamByName('ID_NOTAENTRADA').AsInteger := pID;
            lQuery.Params.ParamByName('NDUP').AsInteger := StrToInt(pOrdem);
            lQuery.ExecSQL;
          end;
        end;
      end;

    //Gravar tabela Log
      lQuery.SQL.Clear;
      lQuery.SQL.Add(SQLLog);
      lQuery.Params.ParamByName('TIPO').AsString := pReceberPagar; //Contas a Receber CAR | Contas a Pagar CAP
      lQuery.Params.ParamByName('BAIXA_RESTAURA').AsString := pBaixaRestaura;
      lQuery.Params.ParamByName('ID_DUPLICATA').AsInteger := pID;
      lQuery.Params.ParamByName('TIPO_DUPLICATA').AsString := pTipo;
      lQuery.Params.ParamByName('ORDEM_DUPLICATA').AsString := pOrdem;
      lQuery.Params.ParamByName('DATA_HORA').AsDateTime := Now;
      lQuery.Params.ParamByName('USUARIO').AsString := pUsuario;
      lQuery.Params.ParamByName('VALOR').AsCurrency := pValor;
      lQuery.ExecSQL;
      Result := True;
    except

    end;
  finally
    FreeAndNil(lQuery);
    DM.FecharConexao;
    FreeAndNil(DM);
  end;

end;

function TSM_Financeiro.setFormaPagto(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    fdqryForma.Connection := DM.Conexao;
    fdqryParcelamento.Connection := DM.Conexao;
    TranGravar.Connection := DM.Conexao;
    TranGravar.StartTransaction;

    try
      dsFormaPagto.Data := Dados;
      dsFormaPagto.ApplyUpdates(0);
      TranGravar.Commit;
      Result := getFormaPagto(BD, pID);
    except
      on e: Exception do
      begin
        TranGravar.Rollback;
        Result := False;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    dsFormaPagto.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.

