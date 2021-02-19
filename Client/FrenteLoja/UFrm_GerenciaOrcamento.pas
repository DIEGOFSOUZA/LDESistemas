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
    procedure actAutorizarExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GerenciaOrcamento: TFrm_GerenciaOrcamento;

implementation

uses
  UDM, u_Mensagem;

{$R *.dfm}

procedure TFrm_GerenciaOrcamento.actAutorizarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_GerenciaOrcamento.actLocalizarExecute(Sender: TObject);
var
  lSQL: string;
begin
  inherited;
  lSQL := 'SELECT a.EMISSAO,a.LIBERADO,a.SOLICITACAO justificativa,a.TIPO_LIBERACAO motivo,'+
          'a.USUARIO,a.USU_LIBEROU,b.NOME_RAZAO cliente,c.DESCRICAO formapagto,sum(d.VTOTAL) valor '+
          'FROM ORCAMENTO a '+
          'left outer join CLIENTE b on (b.CODIGO=a.ID_CLIENTE) '+
          'left outer join CONDPAGTO c on (c.CODIGO=a.ID_FORMAPAGTO) '+
          'left outer join ORCAMENTO_ITEM d on (d.ID_ORCAMENTO=a.ID) '+
          'where a.STATUS = ''EM ABERTO'' '+
          'group by 1,2,3,4,5,6,7,8';

  cdsOrcamentos.Close;
  cdsOrcamentos.Data := DM.LerDataSet(lSQL);

  dbgrdOrcamentos.SetFocus;
end;

end.
