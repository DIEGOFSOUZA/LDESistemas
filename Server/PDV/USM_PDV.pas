unit USM_PDV;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet;

type
  TsmPDV = class(TDSServerModule)
    fdqryOrcamento: TFDQuery;
    fdqryOrItem: TFDQuery;
    fdqryOrPagar: TFDQuery;
    dspOrcamento: TDataSetProvider;
    dsOrcamento: TClientDataSet;
    sOrcamento: TDataSource;
    TranOrcamento: TFDTransaction;
    fdqryOrcamentoID: TIntegerField;
    fdqryOrcamentoEMISSAO: TDateField;
    fdqryOrcamentoID_CLIENTE: TIntegerField;
    fdqryOrcamentoID_FORMAPAGTO: TIntegerField;
    fdqryOrcamentoUSUARIO: TStringField;
    fdqryOrcamentoSTATUS: TStringField;
    fdqryOrItemID_ORCAMENTO: TIntegerField;
    fdqryOrItemORDEM: TIntegerField;
    fdqryOrItemID_PROD: TIntegerField;
    fdqryOrItemQTDE: TFMTBCDField;
    fdqryOrItemVUNIT: TFMTBCDField;
    fdqryOrItemVDESC: TFMTBCDField;
    fdqryOrPagarID_ORCAMENTO: TIntegerField;
    fdqryOrPagarPARCELA: TStringField;
    fdqryOrPagarVALOR: TFMTBCDField;
    fdqryOrPagarVENCTO: TDateField;
    fdqryOrcamentoDT_VALIDADE: TDateField;
    fdqryOrItemUNID: TStringField;
    fdqryOrItemQTDE_BAIXA: TFMTBCDField;
    fdqryOrcamentoSOLICITACAO: TMemoField;
    fdqryOrcamentoLIBERADO: TStringField;
    fdqryOrcamentoTIPO_LIBERACAO: TStringField;
    fdqryOrcamentoUSU_LIBEROU: TStringField;
  private
    { Private declarations }
  public
    function setOrcamento(const BD: string; pID: integer; const Dados: OleVariant): Boolean;
    function getOrcamento(const BD: string; pID: integer): OleVariant;
    function setDevolucao(const BD: string; pTipo: string; pId: Integer; pOrdem: Integer; pQtdeDev: Double; pUsuario: string; pVlCredito: Currency; pIDCliente: integer): Boolean;
  end;

implementation

uses
  uServerDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TsmPDV }

function TsmPDV.getOrcamento(const BD: string; pID: integer): OleVariant;
var
  DM: TServerDM;
  lID: Integer;
begin
  lID := pID;
  DM := TServerDM.Create(BD);
  try
    fdqryOrcamento.Connection := DM.Conexao;
    fdqryOrItem.Connection := DM.Conexao;
    fdqryOrPagar.Connection := DM.Conexao;
    TranOrcamento.Connection := DM.Conexao;
    TranOrcamento.StartTransaction;

    if (lID = 0) then
      lID := DM.LerDataSetInteger('select max(ID) id from ORCAMENTO', 'id');

    if ((lID > 0) or (lID = -1))then
    begin
      fdqryOrcamento.ParamByName('id').AsInteger := lId;

      dsOrcamento.close;
      dsOrcamento.Open;
      Result := dsOrcamento.Data;
    end
    else
      raise Exception.Create('Documento não encontrado.');

  finally
    if TranOrcamento.Active then
      TranOrcamento.Commit;
    dsOrcamento.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TsmPDV.setDevolucao(const BD: string; pTipo: string; pId: Integer; pOrdem: Integer; pQtdeDev: Double; pUsuario: string; pVlCredito: Currency; pIDCliente: integer): Boolean;
const
  SQL = 'select pi.id_produto,pi.qtde_baixa,pi.qtde_disponivel,'+
        'cast((pi.qtde_baixa/pi.qtde) as numeric(8,3))qtde_unit '+
        'from pdv_itens pi '+
        'where pi.tipo = %s and '+
        'pi.id = %s and '+
        'pi.ordem = %s';
var
  DM: TServerDM;
  txt: string;
  lQtdeBaixa,lQtdeDisponivel : Extended;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  try
    DM.SQLLer.Close;
    DM.SQLLer.Open(Format(SQL,[QuotedStr(pTipo),pId.ToString,pOrdem.ToString]));

    try
      lQtdeBaixa := DM.SQLLer.FieldByName('QTDE_UNIT').AsFloat*pQtdeDev;
      txt := 'insert into PDV_DEVOLUCAO (TIPO, ID_VENDA, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, DATA, USUARIO) '+
             'values ('+QuotedStr(pTipo)+
             ','+pId.ToString+
             ','+pOrdem.ToString+
             ','+DM.SQLLer.FieldByName('ID_PRODUTO').AsString+
             ','+pQtdeDev.ToString+
             ','+ FormatFloat('##0.000',lQtdeBaixa)+
             ','+ QuotedStr(FormatDateTime('dd.mm.yyyy',Date))+
             ','+ QuotedStr(pUsuario)+');';

      DM.Executar(txt); //Gera registro em tabela PDV_DEVOLUCAO

      lQtdeDisponivel := DM.SQLLer.FieldByName('QTDE_DISPONIVEL').AsFloat - pQtdeDev;
      txt := 'update pdv_itens pi set pi.qtde_disponivel = '+FormatFloat('##0.000',lQtdeDisponivel)+
             ' where pi.tipo = '+QuotedStr(pTipo)+
             ' and pi.id = '+pId.ToString+
             ' and pi.ordem = '+pOrdem.ToString;
      DM.Executar(txt);       //Atualiza qtde disponivel em tabela PDV_ITENS

      txt := 'update cliente c set c.vl_credito = c.vl_credito+'+FormatCurr('##0.00',pVlCredito)+
             ' where c.codigo = '+pIDCliente.ToString ;
      DM.Executar(txt);  //Atualiza Credito ao Cliente

      Result := True;
    except
      Result := False;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TsmPDV.setOrcamento(const BD: string; pID: integer; const Dados: OleVariant): Boolean;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    fdqryOrcamento.Connection := DM.Conexao;
    fdqryOrItem.Connection := DM.Conexao;
    fdqryOrPagar.Connection := DM.Conexao;
    TranOrcamento.Connection := DM.Conexao;
    TranOrcamento.StartTransaction;

    try
      dsOrcamento.Data := Dados;
      dsOrcamento.ApplyUpdates(0);
      TranOrcamento.Commit;
      Result := True; //getNotaEntrada(BD, pID);
    except
      on e: Exception do
      begin
        TranOrcamento.Rollback;
        Result := False;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    dsOrcamento.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.

