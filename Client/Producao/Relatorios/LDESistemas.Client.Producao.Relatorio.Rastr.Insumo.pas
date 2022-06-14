unit LDESistemas.Client.Producao.Relatorio.Rastr.Insumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio2_1, RLReport,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, UEDPesquisa,
  System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient;

type
  TRel_Rastr_Insumo = class(TPdr_Relatorio2_1)
    pnlFundo: TPanel;
    pnlButtons: TPanel;
    btnGerarRelatorio: TButton;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    imgFechar: TImage;
    pnlClient: TPanel;
    Label2: TLabel;
    pnlRodape: TPanel;
    actlst1: TActionList;
    actGerarRelatorio: TAction;
    actSair: TAction;
    edtLote: TEdit;
    edpesProduto: TEdPesquisa;
    cdsLer: TClientDataSet;
    sLer: TDataSource;
    cdsLerLOTE: TStringField;
    cdsLerDT_FABRICACAO: TDateField;
    cdsLerDT_VALIDADE: TDateField;
    cdsLerQTDE_UTILIZADA: TBCDField;
    cdsLerID_LOTE_PRODUCAO: TIntegerField;
    cdsLerID_PRODUTO: TIntegerField;
    cdsLerPRODUTO: TStringField;
    cdsLerQTDE_PRODUZIDA: TFMTBCDField;
    cdsLerUNIDADE: TStringField;
    rlbndTit: TRLBand;
    RLLabel1: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLLabel2: TRLLabel;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    rlbndDetail: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    cdsLerID_MATPRIMA: TIntegerField;
    cdsLerINSUMO: TStringField;
    cdsLerLOTE_PRODUCAO: TStringField;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    cdsLerUNIDADE_INSUMO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure edpesProdutoPesquisa(Sender: TObject; var Retorno: string);
    procedure actGerarRelatorioExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure RLDBText6BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText4BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText7BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText9BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
   procedure MontaSQL();
  public
    { Public declarations }
  end;

var
  Rel_Rastr_Insumo: TRel_Rastr_Insumo;

implementation

uses
  UDM, UConsulta, u_Mensagem;

{$R *.dfm}

procedure TRel_Rastr_Insumo.actGerarRelatorioExecute(Sender: TObject);
begin
  inherited;
  if ((edtLote.Text = '') and (edpesProduto.Campo.Text = '')) then
  begin
    TMensagem.Atencao('Informe o Produto ou Lote');
    edtLote.SetFocus;
    Exit;
  end;

  MontaSQL;

  if not cdsLer.IsEmpty then
  begin
    Relatorio.Prepare;
    Relatorio.PreviewModal;
  end;
end;

procedure TRel_Rastr_Insumo.actSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TRel_Rastr_Insumo.edpesProdutoPesquisa(Sender: TObject; var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  aRet := Consulta.Produto(QuotedStr('PA'), 'Consulta de Produto');
  if (aRet.iCodigo > 0) then
    Retorno := aRet.iCodigo.ToString;
end;

procedure TRel_Rastr_Insumo.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitulo.Caption        := '  RASTREABILIDADE - INSUMO(MATÉRIA-PRIMA)';
  rlblTitRelatorio.Caption := 'RASTREABILIDADE - INSUMO(MATÉRIA-PRIMA)';

  Self.ClientHeight := 185;
  Self.ClientWidth := 729;
end;

procedure TRel_Rastr_Insumo.MontaSQL;
var
  lSQL, lWhere: string;
begin

  try
    Screen.Cursor := crHourGlass;
    lWhere := ' where ';
    lSQL := 'select FL.LOTE, FL.DT_PRODUCAO DT_FABRICACAO, FL.DT_VALIDADE, LM.ID_MATPRIMA, P1.NOME INSUMO, LMF.QTDE QTDE_UTILIZADA,'+
            '       L.ID ID_LOTE_PRODUCAO, P.CODIGO ID_PRODUTO, P.NOME PRODUTO, LI.QTDE_FECHADA QTDE_PRODUZIDA, LI.LOTE LOTE_PRODUCAO,'+
            '       (select coalesce(PU.UND_FRACIONADA_SIGLA, PU.UND_SIGLA)'+
            '        from PRO_GET_UNIDADE(P.CODIGO) PU) UNIDADE,U.SIGLA UNIDADE_INSUMO '+
            'from LOTE_MATPRIMA_FABRICANTE LMF '+
            'left join FABRICANTE_LOTE FL on (FL.ID = LMF.ID_LOTEFABRICANTE) '+
            'left join LOTE_MATPRIMA LM on (LM.ID = LMF.ID_LOTEMATPRIMA) '+
            'left join LOTE_ITENS LI on (LI.ID = LM.ID_LOTE_ITEM) '+
            'left join LOTE L on (L.ID = LI.ID_LOTE) '+
            'left join PRODUTO P on (P.CODIGO = LI.CODPRO) '+
            'left join PRODUTO P1 on (P1.CODIGO = LM.ID_MATPRIMA) '+
            'left join UNIDADE U on (U.CODIGO = coalesce(P1.CONV_UNIDADE,P1.cod_unidade)) ';

    if (edpesProduto.Campo.Text <> '') then
    begin
      lSQL := lSQL + lWhere +
              ' LI.CODPRO = '+edpesProduto.Campo.Text;
      lWhere := ' and ';
    end;

    if (edtLote.Text <> '') then
      lSQL := lSQL + lWhere +
              'FL.LOTE = '+QuotedStr(edtLote.Text);

    cdsLer.Close;
    cdsLer.Data := DM.LerDataSet(lSQL);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TRel_Rastr_Insumo.RLDBText4BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  inherited;
  if not cdsLerUNIDADE_INSUMO.IsNull then
    AText := AText + ' ' + cdsLer.FieldByName('UNIDADE_INSUMO').AsString
  else
    AText := AText + ' ' + cdsLer.FieldByName('UNIDADE').AsString;
end;

procedure TRel_Rastr_Insumo.RLDBText6BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  inherited;
  AText := AText + ' - ' + cdsLer.FieldByName('PRODUTO').AsString;
end;

procedure TRel_Rastr_Insumo.RLDBText7BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  inherited;
  AText := AText + ' ' + cdsLer.FieldByName('UNIDADE').AsString;
end;

procedure TRel_Rastr_Insumo.RLDBText9BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  inherited;
  AText := AText + ' - ' + cdsLer.FieldByName('INSUMO').AsString;
end;

end.
