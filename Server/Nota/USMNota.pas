unit USMNota;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TSMNota = class(TDSServerModule)
    fdqryEntrada: TFDQuery;
    dsEntrada: TClientDataSet;
    sEntrada: TDataSource;
    dspEntrada: TDataSetProvider;
    fdqryEntrada_Item: TFDQuery;
    fdqryEntrada_Pagar: TFDQuery;
    TranGravacao: TFDTransaction;
    fdqryEntrada_PagarID_NOTAENTRADA: TIntegerField;
    fdqryEntrada_PagarNFAT: TIntegerField;
    fdqryEntrada_PagarVDESC: TBCDField;
    fdqryEntrada_PagarNDUP: TIntegerField;
    fdqryEntrada_PagarDVENC: TDateField;
    fdqryEntrada_PagarVDUP: TBCDField;
    fdqryEntrada_PagarINDPAG: TStringField;
    fdqryEntrada_PagarTPAG: TStringField;
    fdqryEntrada_PagarBAIXA_DATA: TDateField;
    fdqryEntrada_PagarBAIXA_VALOR: TBCDField;
    fdqryEntrada_PagarBAIXA_USUARIO: TStringField;
    fdqryEntrada_PagarID_HISTORICO: TIntegerField;
    fdqryEntrada_PagarID_CONTA: TStringField;
    fdqryEntrada_PagarID_CAIXA: TIntegerField;
    fdqryEntrada_PagarVJUROS: TBCDField;
    fdqryEntradaID: TIntegerField;
    fdqryEntradaCODFOR: TIntegerField;
    fdqryEntradaID_CONDPAGTO: TIntegerField;
    fdqryEntradaID_HISTORICO: TIntegerField;
    fdqryEntradaID_USUARIO: TIntegerField;
    fdqryEntradaDESCRICAO: TStringField;
    fdqryEntradaEMISSAO: TDateField;
    fdqryEntradaENTRADA: TDateField;
    fdqryEntradaBASEICMS: TCurrencyField;
    fdqryEntradaVALORICMS: TCurrencyField;
    fdqryEntradaTOTPRODUTO: TCurrencyField;
    fdqryEntradaFRETE: TCurrencyField;
    fdqryEntradaSEGURO: TCurrencyField;
    fdqryEntradaOUTRAS: TCurrencyField;
    fdqryEntradaVALORIPI: TCurrencyField;
    fdqryEntradaTOTNOTA: TCurrencyField;
    fdqryEntradaOBS: TMemoField;
    fdqryEntradaDATA_HORA: TSQLTimeStampField;
    fdqryEntradaN_NF: TIntegerField;
    fdqryEntradaCNF: TIntegerField;
    fdqryEntradaINDPAG: TIntegerField;
    fdqryEntradaMODELO: TStringField;
    fdqryEntradaSERIE: TIntegerField;
    fdqryEntradaDSAIENT: TDateField;
    fdqryEntradaHSAIENT: TTimeField;
    fdqryEntradaTPNF: TStringField;
    fdqryEntradaFINNFE: TIntegerField;
    fdqryEntradaVBCST: TFMTBCDField;
    fdqryEntradaVDESC: TFMTBCDField;
    fdqryEntradaVII: TFMTBCDField;
    fdqryEntradaVPIS: TFMTBCDField;
    fdqryEntradaVCOFINS: TFMTBCDField;
    fdqryEntradaMODFRETE: TStringField;
    fdqryEntradaINFCPL: TStringField;
    fdqryEntradaQVOL: TIntegerField;
    fdqryEntradaESP: TStringField;
    fdqryEntradaMARCA: TStringField;
    fdqryEntradaNVOL: TStringField;
    fdqryEntradaPESOL: TFMTBCDField;
    fdqryEntradaPESOB: TFMTBCDField;
    fdqryEntradaUFEMBARQ: TStringField;
    fdqryEntradaXLOCEMBARQ: TStringField;
    fdqryEntradaADICINFCPL: TMemoField;
    fdqryEntradaADICINFADFISCO: TMemoField;
    fdqryEntradaVST: TFMTBCDField;
    fdqryEntradaCOMPRA_XNCOMPRA: TStringField;
    fdqryEntradaCOMPRA_XPED: TStringField;
    fdqryEntradaCOMPRA_XCONT: TStringField;
    fdqryEntradaISSQN_VSERV: TFMTBCDField;
    fdqryEntradaISSQN_VBC: TFMTBCDField;
    fdqryEntradaISSQN_VISS: TFMTBCDField;
    fdqryEntradaISSQN_VPIS: TFMTBCDField;
    fdqryEntradaISSQN_VCOFINS: TFMTBCDField;
    fdqryEntradaIMPORTADA: TStringField;
    fdqryEntradaCHAVE: TStringField;
    fdqryEntradaTIPO_NOTA: TStringField;
    fdqryEntradaTIPO: TStringField;
    fdqryEntradaDT_ENTREGA: TDateField;
    fdqryEntradaNAT_OPERACAO: TStringField;
    fdqryEntradaTOT_IPI: TFMTBCDField;
    fdqryEntradaTR_PLACA: TStringField;
    fdqryEntradaTR_PLACAUF: TStringField;
    fdqryEntradaTR_RAZAO: TStringField;
    fdqryEntradaTR_CPFCNPJ: TStringField;
    fdqryEntradaTR_INSC: TStringField;
    fdqryEntradaTR_CEP: TStringField;
    fdqryEntradaTR_ENDERECO: TStringField;
    fdqryEntradaLOG: TMemoField;
    fdqryEntradaTR_ANTT: TStringField;
    fdqryEntradaFORNECEDOR: TStringField;
    fdqryEntrada_ItemID_NOTAENTRADA: TIntegerField;
    fdqryEntrada_ItemORDEM: TSmallintField;
    fdqryEntrada_ItemID_PRODUTO: TIntegerField;
    fdqryEntrada_ItemNCM: TStringField;
    fdqryEntrada_ItemST: TStringField;
    fdqryEntrada_ItemQTRIB: TBCDField;
    fdqryEntrada_ItemUNIDADE: TStringField;
    fdqryEntrada_ItemUNIDADE_TRIB: TStringField;
    fdqryEntrada_ItemDESCONTO: TFMTBCDField;
    fdqryEntrada_ItemVALORDESCONTO: TBCDField;
    fdqryEntrada_ItemVALORFRETE: TBCDField;
    fdqryEntrada_ItemVALOROUTRAS: TBCDField;
    fdqryEntrada_ItemXPED: TStringField;
    fdqryEntrada_ItemCPROD: TStringField;
    fdqryEntrada_ItemCEAN: TStringField;
    fdqryEntrada_ItemCFOP: TStringField;
    fdqryEntrada_ItemVALORSEGURO: TBCDField;
    fdqryEntrada_ItemVALORACESSORIAS: TBCDField;
    fdqryEntrada_ItemIPI_BC: TBCDField;
    fdqryEntrada_ItemIPI_VALOR: TBCDField;
    fdqryEntrada_ItemIPI_ST: TBCDField;
    fdqryEntrada_ItemIPI_STVAL: TBCDField;
    fdqryEntrada_ItemIPI_ALIQ: TCurrencyField;
    fdqryEntrada_ItemIPI_CST: TStringField;
    fdqryEntrada_ItemPIS_BC: TBCDField;
    fdqryEntrada_ItemPIS_VALOR: TBCDField;
    fdqryEntrada_ItemPIS_ST: TBCDField;
    fdqryEntrada_ItemPIS_ALIQST: TCurrencyField;
    fdqryEntrada_ItemPIS_STVAL: TBCDField;
    fdqryEntrada_ItemPIS_ALIQ: TCurrencyField;
    fdqryEntrada_ItemPIS_CST: TStringField;
    fdqryEntrada_ItemCOFINS_BC: TBCDField;
    fdqryEntrada_ItemCOFINS_VALOR: TBCDField;
    fdqryEntrada_ItemCOFINS_ST: TBCDField;
    fdqryEntrada_ItemCOFINS_ALIQST: TCurrencyField;
    fdqryEntrada_ItemCOFINS_STVAL: TBCDField;
    fdqryEntrada_ItemCOFINS_ALIQ: TCurrencyField;
    fdqryEntrada_ItemCOFINS_CST: TStringField;
    fdqryEntrada_ItemII_VBC: TBCDField;
    fdqryEntrada_ItemII_VDESPADU: TBCDField;
    fdqryEntrada_ItemII_VII: TBCDField;
    fdqryEntrada_ItemII_VIOF: TBCDField;
    fdqryEntrada_ItemDI_NDI: TStringField;
    fdqryEntrada_ItemDI_DATA: TDateField;
    fdqryEntrada_ItemDI_LOCDESEMBARC: TStringField;
    fdqryEntrada_ItemDI_UFDESEMBARC: TStringField;
    fdqryEntrada_ItemDI_DATADESEMBARC: TDateField;
    fdqryEntrada_ItemDI_CODEXPORTADOR: TIntegerField;
    fdqryEntrada_ItemVUNTRIB: TFMTBCDField;
    fdqryEntrada_ItemN_DRAW: TIntegerField;
    fdqryEntrada_ItemN_RE: TIntegerField;
    fdqryEntrada_ItemQEXPORT: TBCDField;
    fdqryEntrada_ItemCHNFE: TStringField;
    fdqryEntrada_ItemICMS_BC: TBCDField;
    fdqryEntrada_ItemICMS_PREDBC: TCurrencyField;
    fdqryEntrada_ItemICMS_ALIQ: TCurrencyField;
    fdqryEntrada_ItemICMS_VALOR: TBCDField;
    fdqryEntrada_ItemICMS_ORIGEM: TStringField;
    fdqryEntrada_ItemICMS_PREDBCST: TCurrencyField;
    fdqryEntrada_ItemICMS_VALORBCST: TBCDField;
    fdqryEntrada_ItemICMS_ALIQST: TCurrencyField;
    fdqryEntrada_ItemICMS_VALORST: TBCDField;
    fdqryEntrada_ItemICMS_CSOSN: TStringField;
    fdqryEntrada_ItemICMS_VBCUFDEST: TBCDField;
    fdqryEntrada_ItemICMS_PFCPUFDEST: TCurrencyField;
    fdqryEntrada_ItemICMS_PICMSUFDEST: TCurrencyField;
    fdqryEntrada_ItemICMS_PICMSINTER: TCurrencyField;
    fdqryEntrada_ItemICMS_PICMSINTERPART: TCurrencyField;
    fdqryEntrada_ItemICMS_VFCPUFDEST: TBCDField;
    fdqryEntrada_ItemICMS_VICMSUFDEST: TBCDField;
    fdqryEntrada_ItemICMS_VICMSUFREMET: TBCDField;
    fdqryEntrada_ItemICMS_MODBC: TStringField;
    fdqryEntrada_ItemICMS_MODBCST: TStringField;
    fdqryEntrada_ItemICMS_UFST: TStringField;
    fdqryEntrada_ItemICMS_PBCOP: TBCDField;
    fdqryEntrada_ItemICMS_VBCSTRET: TBCDField;
    fdqryEntrada_ItemICMS_VICMSSTRET: TBCDField;
    fdqryEntrada_ItemICMS_MOTDESICMS: TStringField;
    fdqryEntrada_ItemICMS_PCREDSN: TCurrencyField;
    fdqryEntrada_ItemICMS_VCREDICMSSN: TBCDField;
    fdqryEntrada_ItemICMS_VBCSTDEST: TBCDField;
    fdqryEntrada_ItemICMS_VICMSSTDEST: TBCDField;
    fdqryEntrada_ItemICMS_VICMSDESON: TBCDField;
    fdqryEntrada_ItemICMS_VICMSOP: TBCDField;
    fdqryEntrada_ItemICMS_PDIF: TCurrencyField;
    fdqryEntrada_ItemICMS_VICMSDIF: TBCDField;
    fdqryEntrada_ItemICMS_VBCFCP: TBCDField;
    fdqryEntrada_ItemICMS_PFCP: TCurrencyField;
    fdqryEntrada_ItemICMS_VFCP: TBCDField;
    fdqryEntrada_ItemICMS_VBCFCPST: TBCDField;
    fdqryEntrada_ItemICMS_PFCPST: TCurrencyField;
    fdqryEntrada_ItemICMS_VFCPST: TBCDField;
    fdqryEntrada_ItemICMS_VBCFCPSTRET: TBCDField;
    fdqryEntrada_ItemICMS_PFCPSTRET: TCurrencyField;
    fdqryEntrada_ItemICMS_VFCPSTRET: TBCDField;
    fdqryEntrada_ItemICMS_PREDBCEFET: TCurrencyField;
    fdqryEntrada_ItemICMS_VBCEFET: TBCDField;
    fdqryEntrada_ItemICMS_PST: TCurrencyField;
    fdqryEntrada_ItemICMS_PICMSEFET: TCurrencyField;
    fdqryEntrada_ItemICMS_VICMSEFET: TBCDField;
    fdqryEntrada_ItemDESCPROMOCIONAL: TCurrencyField;
    fdqryEntrada_ItemDESCNORMAL: TCurrencyField;
    fdqryEntrada_ItemPROD_ESPECIF: TStringField;
    fdqryEntrada_ItemCOMB_PRODANP: TStringField;
    fdqryEntrada_ItemCOMB_CODIF: TStringField;
    fdqryEntrada_ItemCOMB_QTEMP: TBCDField;
    fdqryEntrada_ItemCOMB_UFCONS: TStringField;
    fdqryEntrada_ItemCOMB_CIDE_QBCPROD: TBCDField;
    fdqryEntrada_ItemCOMB_CIDE_ALIQPROD: TBCDField;
    fdqryEntrada_ItemCOMB_CIDE_VCIDE: TBCDField;
    fdqryEntrada_ItemID_HISTORICO: TIntegerField;
    fdqryEntrada_ItemPRODUTO_SERVICO: TStringField;
    fdqryEntrada_ItemQUANTIDADE: TStringField;
    fdqryEntrada_PagarCHEQUE_NUMERO: TIntegerField;
    fdqryEntrada_PagarID_PAGTO: TIntegerField;
    fdqryEntrada_PagarFORMA: TStringField;
    fdqryEntrada_ItemSUBTOTAL: TBCDField;
    fdqryEntrada_ItemTOTAL: TBCDField;
    fdqryEntrada_ItemICMS_CST: TStringField;
    fdqryEntrada_ItemQTDE_INFORMADA: TBCDField;
    fdqryEntrada_ItemUNITARIO: TFMTBCDField;
    fdqryEntrada_ItemPRECO_CUSTO: TFMTBCDField;
    fdqryEntrada_ItemQTDE: TBCDField;
    fdqryEntradaHISTORICO: TStringField;
  private

  public
    function setNotaEntrada(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getNotaEntrada(const BD: string; pID: integer): OleVariant;
  end;

implementation

uses
  UDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSMNota }

function TSMNota.getNotaEntrada(const BD: string; pID: integer): OleVariant;
var
  DM: TDM;
  lID: Integer;
begin
  lID := pID;
  DM := TDM.Create(BD);
  try
    fdqryEntrada.Connection := DM.Conexao;
    fdqryEntrada_Item.Connection := DM.Conexao;
    fdqryEntrada_Pagar.Connection := DM.Conexao;
    TranGravacao.Connection := DM.Conexao;
    TranGravacao.StartTransaction;

    if (lID = 0) then
      lID := DM.LerDataSetInteger('select max(ID) id from NOTA_ENTRADA', 'id');

    if ((lID > 0) or (lID = -1))then
    begin
      fdqryEntrada.ParamByName('id').AsInteger := lId;

      dsEntrada.close;
      dsEntrada.Open;
      Result := dsEntrada.Data;
    end
    else
      raise Exception.Create('Documento não encontrado.');

  finally
    if TranGravacao.Active then
      TranGravacao.Commit;
    dsEntrada.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSMNota.setNotaEntrada(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
var
  DM: TDM;
begin
  DM := TDM.Create(BD);
  try
    fdqryEntrada.Connection := DM.Conexao;
    fdqryEntrada_Item.Connection := DM.Conexao;
    fdqryEntrada_Pagar.Connection := DM.Conexao;
    TranGravacao.Connection := DM.Conexao;
    TranGravacao.StartTransaction;

    try
      dsEntrada.Data := Dados;
//      dsEntrada.SaveToFile('c:\apagar\a.cds',dfBinary);
//      dsEntrada.FieldByName('razao').ProviderFlags := [];
      dsEntrada.ApplyUpdates(0);
      TranGravacao.Commit;
      Result := getNotaEntrada(BD, pID);
    except
      on e: Exception do
      begin
        TranGravacao.Rollback;
        raise Exception.Create(e.Message);
      end;

    end;
  finally
    dsEntrada.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.

