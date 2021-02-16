unit UFrm_Lancamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_CadLista, Data.DB, System.Actions,
  Vcl.ActnList, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, UEDPesquisa, UDBPesquisa,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFrm_Lancamento = class(TPdr_CadLista)
    edpsqsListaConta: TEdPesquisa;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    dsPrincipalID: TIntegerField;
    dsPrincipalID_CONTA: TStringField;
    dsPrincipalDTMOVTO: TDateField;
    dsPrincipalDOC: TStringField;
    dsPrincipalVALOR: TFMTBCDField;
    dsPrincipalID_HISTORICO: TIntegerField;
    dsPrincipalOBS: TMemoField;
    dsPrincipalID_FORNECEDOR: TIntegerField;
    dsPrincipalDC: TStringField;
    pnlCrud: TPanel;
    dbpsqsConta: TDBPesquisa;
    dbpsqsHist: TDBPesquisa;
    dbpsqsForn: TDBPesquisa;
    Label2: TLabel;
    dbedtEmissao: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    dbmmo: TDBMemo;
    dsPrincipalBCO_NOME: TStringField;
    dsPrincipalDESCRICAO: TStringField;
    dsPrincipalRAZAO_NOME: TStringField;
    pnlLocaliza: TPanel;
    btnCancelar: TSpeedButton;
    imgLocaliza: TImage;
    actLancamentos: TAction;
    dsListaID: TIntegerField;
    dsListaID_CONTA: TStringField;
    dsListaDTMOVTO: TDateField;
    dsListaDOC: TStringField;
    dsListaVALOR: TFMTBCDField;
    dsListaID_HISTORICO: TIntegerField;
    dsListaDC: TStringField;
    dsListaDESCRICAO: TStringField;
    dsListaRAZAO_NOME: TStringField;
    procedure dbpsqsContaPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsHistPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsFornPesquisa(Sender: TObject; var Retorno: string);
    procedure edpsqsListaContaPesquisa(Sender: TObject; var Retorno: string);
    procedure FormCreate(Sender: TObject);
    procedure dsPrincipalAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure actLancamentosExecute(Sender: TObject);
    procedure dbgrdParcelaDblClick(Sender: TObject);
    procedure pgcChange(Sender: TObject);
    procedure pgcDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
  private
    procedure MontaSql(pCodigo: Integer);
  public
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
  end;

var
  Frm_Lancamento: TFrm_Lancamento;

implementation

uses
  UDM, UConsulta, u_Mensagem, UMakeReadWrite;

{$R *.dfm}

{ TFrm_Lancamento }

procedure TFrm_Lancamento.actLancamentosExecute(Sender: TObject);
const
  SQL = 'SELECT r.ID, r.ID_CONTA, r.DTMOVTO, r.DOC, r.VALOR,'+
        'r.ID_HISTORICO, r.DC,'+
        'b.DESCRICAO,c.RAZAO_NOME '+
        'FROM LANCAMENTO r '+
        'left outer join HISTORICO b on (b.ID = r.ID_HISTORICO) '+
        'left outer join FABRICANTE c on (c.CODIGO = r.ID_FORNECEDOR) '+
        'where r.DTMOVTO between %s and %s '+
        'and r.ID_CONTA = %s '+
        'order by 1';
begin
  inherited;
  if edpsqsListaConta.Campo.Text = '' then
  begin
    TMensagem.Atencao('Informe a conta.');
    Exit;
  end;
  dsLista.Close;
  dsLista.Data := DM.LerDataSet(Format(SQL,[QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date)),
                                            QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date)),
                                            QuotedStr(edpsqsListaConta.Campo.Text)]));
  if dsLista.IsEmpty then
  begin
    TMensagem.Informacao('Nenhum lançamento encontrado.');
  end;


end;

procedure TFrm_Lancamento.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8, #13]) then
    Key := #0; //apenas numero
end;

procedure TFrm_Lancamento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_Lancamento.dbgrdParcelaDblClick(Sender: TObject);
begin
  inherited;
  if (dsLista.FieldByName('id').AsInteger > 0) then
  begin
    MontaSql(dsLista.FieldByName('id').AsInteger);
    MakeReadWrite(dsPrincipalBCO_NOME);
    MakeReadWrite(dsPrincipalDESCRICAO);
    MakeReadWrite(dsPrincipalRAZAO_NOME);
    pgc.ActivePageIndex := 1;
  end;
end;

procedure TFrm_Lancamento.dbpsqsContaPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.ContaBancaria;
end;

procedure TFrm_Lancamento.dbpsqsFornPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Fornecedor.ToString;
end;

procedure TFrm_Lancamento.dbpsqsHistPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico.ToString;
end;

procedure TFrm_Lancamento.dsPrincipalAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dsPrincipal.FieldByName('id').AsInteger := 0;
  dsPrincipal.FieldByName('dtmovto').AsDateTime := Date;
  DBComboBox1.ItemIndex := 0;
end;

procedure TFrm_Lancamento.edpsqsListaContaPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.ContaBancaria;
end;

procedure TFrm_Lancamento.Excluir;
var
  lID: integer;
begin
  lID := dsPrincipal.FieldByName('ID').AsInteger;
  inherited;
  if dsPrincipal.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setLancamento(dm.BancoDados, lID, dsPrincipal.Delta);

    dsPrincipal.Close;
    dsPrincipal.CreateDataSet;
  end;
end;

procedure TFrm_Lancamento.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  dtp1.Date := Date;
  dtp2.Date := Date;

//  with pgc do
//  begin
//    OwnerDraw := True;
//    for i := 0 to PageCount - 1 do
//    begin
//      if (Canvas.TextWidth(Pages[i].Caption) * 2) > TabWidth then
//        TabWidth := Canvas.TextWidth(Pages[i].Caption) * 2;
//      if (Canvas.TextHeight(Pages[i].Caption) * 2) > TabHeight then
//        TabHeight := Canvas.TextHeight(Pages[i].Caption) * 2;
//    end;
//  end;

  dsPrincipal.Close ;
  dsPrincipal.CreateDataSet ;
end;

procedure TFrm_Lancamento.Gravar;
var
  lRetorno: OleVariant;
begin
  {Validar}
  if (dbpsqsConta.Campo.Text = '') then
  begin
    TMensagem.Atencao('Informe a conta.');
    dbpsqsConta.Campo.SetFocus;
    Exit;
  end;

  if (dbedtEmissao.Text = '') then
  begin
    TMensagem.Atencao('Informe a data de emissão.');
    dbedtEmissao.SetFocus;
    Exit;
  end;

  if DBComboBox1.ItemIndex < 0 then
  begin
    TMensagem.Atencao('Informar campo débito/crédito.');
    DBComboBox1.SetFocus;
    Exit;
  end;

  if (DBEdit2.Text = '') then
  begin
    TMensagem.Atencao('Informe o valor do lançamento.');
    DBEdit2.SetFocus;
    Exit;
  end;

  inherited;
  if dsPrincipal.ChangeCount > 0 then
  begin
    lRetorno := DM.SMCadastroClient.setLancamento(DM.BancoDados, dsPrincipal.FieldByName('id').AsInteger, dsPrincipal.Delta);
    dsPrincipal.Close;
    dsPrincipal.Data := lRetorno;
  end;
end;

procedure TFrm_Lancamento.localizar;
begin
  inherited;
  //
end;

procedure TFrm_Lancamento.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  dsPrincipal.Close;
  dsPrincipal.Data := DM.SMCadastroClient.getLancamento(DM.BancoDados, pCodigo);
end;

procedure TFrm_Lancamento.Novo;
begin
  inherited;
  dbpsqsConta.Campo.SetFocus;
end;

procedure TFrm_Lancamento.pgcChange(Sender: TObject);
begin
  inherited;
  if ((pgc.ActivePageIndex = 0) and (edpsqsListaConta.Campo.Text <> '')) then
    actLancamentos.Execute;
end;

procedure TFrm_Lancamento.pgcDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  inherited;
//  with Control.Canvas.Font do
//  begin
//    Color := clBlack;
//    Name := 'Segoe UI';
//    Size := 9;
//    Style := [fsBold];
//  end;
//
//  Control.Canvas.TextOut(Rect.left+2,Rect.top+2,TTabSheet(pgc.Pages[tabindex]).Caption);
end;

end.
