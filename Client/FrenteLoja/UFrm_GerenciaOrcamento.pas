unit UFrm_GerenciaOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFrm_GerenciaOrcamento = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlOrcamentos: TPanel;
    dbgrdOrcamentos: TDBGrid;
    cdsOrcamentos: TClientDataSet;
    pnlDetalheOrcamento: TPanel;
    pnlAcoes: TPanel;
    pnlDetail: TPanel;
    lbl2: TLabel;
    dsOrcamentos: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    pnlAutorizar: TPanel;
    btnAutorizar: TSpeedButton;
    actAutorizar: TAction;
    cdsOrcamentosEMISSAO: TDateField;
    cdsOrcamentosLIBERADO: TStringField;
    cdsOrcamentosJUSTIFICATIVA: TMemoField;
    cdsOrcamentosMOTIVO: TStringField;
    cdsOrcamentosUSUARIO: TStringField;
    cdsOrcamentosUSU_LIBEROU: TStringField;
    cdsOrcamentosCLIENTE: TStringField;
    cdsOrcamentosFORMAPAGTO: TStringField;
    cdsOrcamentosVALOR: TFMTBCDField;
    Label5: TLabel;
    cbbFiltro: TComboBox;
    pnlLocalizar: TPanel;
    btnLocalizar: TSpeedButton;
    actLocalizar: TAction;
    cdsOrcamentosID: TIntegerField;
    actVisualizaItens: TAction;
    procedure actAutorizarExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actVisualizaItensExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GerenciaOrcamento: TFrm_GerenciaOrcamento;

implementation

uses
  UDM, u_Mensagem, UFrm_GerOrcItens;

{$R *.dfm}

procedure TFrm_GerenciaOrcamento.actAutorizarExecute(Sender: TObject);
const
  SQL = 'update ORCAMENTO A set A.LIBERADO = ''SIM'''+
        ',a.USU_LIBEROU = %s '+
        'where A.ID = %s';
begin
  inherited;
  if (cdsOrcamentos.FieldByName('liberado').AsString = 'SIM') then
  begin
    TMensagem.Atencao('Orçamento ja foi liberado.');
    Exit;
  end;

  try
    DM.ExecutarSQL(DM.BancoDados, Format(SQL, [QuotedStr(DM.UsuarioDataHora), cdsOrcamentos.FieldByName('ID').AsString]));
    TMensagem.Informacao('Autorização efetuada com sucesso!');
    actLocalizar.Execute;
  except
    TMensagem.Erro('Erro: Não foi possível autorizar o orçamento. Tente novamente.');
  end;
end;

procedure TFrm_GerenciaOrcamento.actLocalizarExecute(Sender: TObject);
var
  lSQL: string;
begin
  inherited;
  lSQL := 'SELECT a.EMISSAO,a.LIBERADO,a.SOLICITACAO justificativa,a.TIPO_LIBERACAO motivo,'+
          'a.USUARIO,a.USU_LIBEROU,b.NOME_RAZAO cliente,c.DESCRICAO formapagto,a.ID,'+
          'sum(d.VTOTAL) valor '+
          'FROM ORCAMENTO a '+
          'left outer join CLIENTE b on (b.CODIGO=a.ID_CLIENTE) '+
          'left outer join CONDPAGTO c on (c.CODIGO=a.ID_FORMAPAGTO) '+
          'left outer join ORCAMENTO_ITEM d on (d.ID_ORCAMENTO=a.ID) '+
          'where a.STATUS = ''EM ABERTO'' ';
  case cbbFiltro.ItemIndex of
    0:
      lSQL := lSQL + 'and a.liberado = ''NAO'' ';
    1:
      lSQL := lSQL + 'and a.liberado = ''SIM'' ';
  end;

  lSQL := lSQL+'group by 1,2,3,4,5,6,7,8,9';

  cdsOrcamentos.Close;
  cdsOrcamentos.Data := DM.LerDataSet(lSQL);

  dbgrdOrcamentos.SetFocus;
end;

procedure TFrm_GerenciaOrcamento.actVisualizaItensExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(Frm_GerOrcItens) then
    Frm_GerOrcItens := TFrm_GerOrcItens.Create(Self);
  try
    Frm_GerOrcItens.Executar(cdsOrcamentos.FieldByName('ID').AsString);
    Frm_GerOrcItens.ShowModal;

  finally

  end;
end;

procedure TFrm_GerenciaOrcamento.FormActivate(Sender: TObject);
begin
  inherited;
  actLocalizar.Execute;
end;

end.
