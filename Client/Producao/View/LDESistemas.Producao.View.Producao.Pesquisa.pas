unit LDESistemas.Producao.View.Producao.Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Child2, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, PngSpeedButton, Vcl.ComCtrls,
  Datasnap.DBClient, U_DataCorrida, System.DateUtils, Vcl.Menus;

type
  TFrmProducaoPesquisa = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    pnlIncluir: TPanel;
    btnIncluir: TSpeedButton;
    pnlCenter: TPanel;
    pnlGrid: TPanel;
    dbgrdPedidos: TDBGrid;
    pnlTop: TPanel;
    pnlPeriodo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    pngspdbtnBuscar: TPngSpeedButton;
    dsLote: TDataSource;
    cdsLote: TClientDataSet;
    cdsLoteID: TIntegerField;
    cdsLoteINICIO: TDateField;
    cdsLoteUSUARIO: TStringField;
    cdsLoteCUSTO: TCurrencyField;
    cdsLoteSTATUS: TStringField;
    pm1: TPopupMenu;
    PRODUZIRLOTE1: TMenuItem;
    actProduzirLote: TAction;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pngspdbtnBuscarClick(Sender: TObject);
    procedure dbgrdPedidosDblClick(Sender: TObject);
    procedure actProduzirLoteExecute(Sender: TObject);
  private
    procedure Iniciar();
    procedure CarregarGrid();
  public
    { Public declarations }
  end;

var
  FrmProducaoPesquisa: TFrmProducaoPesquisa;

implementation

uses
  LDESistemas.Producao.View.Producao.Nova, UDM, UFrm_Inicial, u_Mensagem;

{$R *.dfm}

procedure TFrmProducaoPesquisa.actProduzirLoteExecute(Sender: TObject);
var
  lIdLote: Integer;
  lRetorno: string;
begin
  inherited;
  if (cdsLote.FieldByName('STATUS').AsString <> 'PENDENTE') then
    Exit;

  lIdLote := cdsLote.FieldByName('ID').AsInteger;
  if Tmensagem.Pergunta('Confirma a total produção do Lote Nº ' + lIdLote.ToString + '?') then
  begin
    lRetorno := DM.SMProducao.setProducao_Baixa(DM.BancoDados, lIdLote, DM.Empresa.Bloq_Producao_Negativo, DM.Empresa.Rastreabilidade);
    if (lRetorno = 'sucesso') then
    begin
      CarregarGrid;
      cdsLote.Locate('ID', lIdLote, []);
    end;
    if (lRetorno = 'Insumo:Estoque abaixo') then
      TMensagem.Informacao('Não há Insumo(Matéria-Prima) suficiente para gerar a produção.'+sLineBreak+
                           'Parametrizado no cadastro de Empresa que Estoque não pode ser negativo.');
    if (lRetorno = 'erro') then
      TMensagem.Erro('Erro: Produção não foi gerada.' + sLineBreak + 'Tente novamente.');
  end;
end;

procedure TFrmProducaoPesquisa.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmProducaoNova) then
    FrmProducaoNova := TFrmProducaoNova.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    FrmProducaoNova.IDLote := -1;//DM.GetInteger('select gen_id(GEN_LOTE,0)+1 id_lote from RDB$DATABASE','ID_LOTE');
    FrmProducaoNova.Retorno := '';
    FrmProducaoNova.ShowModal;
    if (FrmProducaoNova.Retorno = 'sucesso') then
      CarregarGrid;
  finally
    FreeAndNil(FrmProducaoNova);
    AlphaBlend := False;
  end;
end;

procedure TFrmProducaoPesquisa.CarregarGrid;
const
  SQL = 'select L.ID, L.EMISSAO INICIO, L.STATUS, L.USUARIO,'+
        'cast(sum(I.VL_CUSTO) as double precision) CUSTO '+
        'from LOTE L '+
        'left join LOTE_ITENS I on (I.ID_LOTE = L.ID) '+
        'where L.EMISSAO between %s and %s '+
        'group by L.ID, L.EMISSAO, L.STATUS, L.USUARIO  ';
begin
  cdsLote.Close;
  cdsLote.Data := DM.LerDataSet(Format(SQL,[QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date)),
                                            QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date))]));

end;

procedure TFrmProducaoPesquisa.dbgrdPedidosDblClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmProducaoNova) then
    FrmProducaoNova := TFrmProducaoNova.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    FrmProducaoNova.IDLote := cdsLote.FieldByName('ID').AsInteger;
    FrmProducaoNova.ShowModal;
    if (FrmProducaoNova.Retorno = 'sucesso') then
      CarregarGrid;
  finally
    FreeAndNil(FrmProducaoNova);
    AlphaBlend := False;
  end;
end;

procedure TFrmProducaoPesquisa.FormCreate(Sender: TObject);
begin
  inherited;
  Iniciar;
end;

procedure TFrmProducaoPesquisa.FormShow(Sender: TObject);
begin
  inherited;
  Align := alNone;
  AutoSize := False;
  WindowState := wsNormal;
  BorderStyle := bsnone;

  {Preenche Espaço Image}
  Top := Frm_Inicial.pnlRodape.Height;
  Left := Frm_Inicial.pnlFundo.Left+10;
  Width := Frm_Inicial.pnlFundo.Width -20;
  Height := Frm_Inicial.pnlFundo.Height-50;
end;

procedure TFrmProducaoPesquisa.Iniciar;
begin
  dtp1.Date := Incday(Date, -7);
  dtp2.Date := Date;
end;

procedure TFrmProducaoPesquisa.pngspdbtnBuscarClick(Sender: TObject);
begin
  inherited;
  CarregarGrid;
end;

end.
