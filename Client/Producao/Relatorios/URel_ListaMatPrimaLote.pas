unit URel_ListaMatPrimaLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio,
  RLReport, Data.DB, Datasnap.DBClient, Vcl.StdCtrls;

type
  TRel_ListaMatPrimaLote = class(TPdr_Relatorio)
    RLBand1: TRLBand;
    rlpnlEmpresa: TRLPanel;
    rlpnlInfo: TRLPanel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    rlblNomeRelatorio: TRLLabel;
    rlMemoParametros: TRLMemo;
    rlblEmpFantasia: TRLLabel;
    rlblEmpRazao: TRLLabel;
    rlblEmpCNPJINSC: TRLLabel;
    rlblEmpEndereco: TRLLabel;
    rlblEmpBairroCidadeUF: TRLLabel;
    rlblEmpFones: TRLLabel;
    rlblEmailSite: TRLLabel;
    cdsMatPrima: TClientDataSet;
    dsMatPrima: TDataSource;
    cdsMatPrimaNOME: TStringField;
    cdsMatPrimaTOTAL: TFMTBCDField;
    cdsMatPrimaUNIDADE: TStringField;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    Label1: TLabel;
    Label2: TLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    Label3: TLabel;
    RLDBText3: TRLDBText;
    cdsMatPrimaCODIGO: TIntegerField;
  private
    { Private declarations }
    procedure MontaSQL() ;
    procedure MontaParametros() ;
    procedure DadosEmpresa() ;
  public
    { Public declarations }
    aLote  : string ;
    procedure Executar() ;
  end;

var
  Rel_ListaMatPrimaLote: TRel_ListaMatPrimaLote;

implementation

uses
  UDM;

{$R *.dfm}

procedure TRel_ListaMatPrimaLote.DadosEmpresa;
begin
//  DM.CarregaEmpresa ;
  rlblEmpFantasia.Caption := DM.Empresa.Fantasia ;
  rlblEmpRazao.Caption := DM.Empresa.RazaoSocial ;
  rlblEmpCNPJINSC.Caption := 'CNPJ: '+ DM.Empresa.CNPJ + '  - IE: '+DM.Empresa.InscEst ;
  rlblEmpEndereco.Caption := DM.Empresa.Endereco+', '+DM.Empresa.Numero ;
  rlblEmpBairroCidadeUF.Caption := DM.Empresa.Bairro+' - '+DM.Empresa.Cidade+' - '+DM.Empresa.UF ;
  rlblEmpFones.Caption := 'FONE: '+DM.Empresa.Fone+'  - CEL: '+DM.Empresa.Celular ;
  rlblEmailSite.Caption := 'EMAIL: '+DM.Empresa.Email ;
end;

procedure TRel_ListaMatPrimaLote.Executar();
begin
  MontaParametros ;
  DadosEmpresa ;
  MontaSQL() ;

  {loop por motivo de reclamacao Takano de as vezes o rel sair em branco}
  if cdsMatPrima.IsEmpty then
    MontaSQL()
  else
    Relatorio.PreviewModal ;
end;

procedure TRel_ListaMatPrimaLote.MontaParametros;
begin
  rlblNomeRelatorio.Caption := 'RELAÇÃO DE MATERIA-PRIMA' ;
  rlMemoParametros.Lines.Clear ;
  rlMemoParametros.Lines.Add('Lote: '+ aLote)
end;

procedure TRel_ListaMatPrimaLote.MontaSQL();
const
      SQL = 'with juncao as '+
            '( '+
            'SELECT b.CODIGO,b.NOME,cast((a.QTDE * c.QTDE) as numeric(15,5)) total,'+
            'd.SIGLA unidade '+
            'FROM LOTE_ITENS a '+
            'left outer join PRODUTO_COMPOSICAO c on (c.ID_PRODUTO = a.CODPRO) '+
            'left outer join PRODUTO b on (b.CODIGO = c.ID_MATPRIMA) '+
            'left outer join UNIDADE d on (d.CODIGO = b.COD_UNIDADE) '+
            'where a.ID_LOTE = %s '+
            ') '+
            'select a.codigo,a.nome, cast(sum(a.total)as numeric(15,5)) total,'+
            'a.unidade '+
            'from JUNCAO a '+
            'group by 1,2,4';
begin
  cdsMatPrima.Close ;
  cdsMatPrima.Data := DM.LerDataSet(Format(SQL,[QuotedStr(aLote)])) ;
end;

end.
