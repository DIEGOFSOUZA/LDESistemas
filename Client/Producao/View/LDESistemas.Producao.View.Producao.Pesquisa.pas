unit LDESistemas.Producao.View.Producao.Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, PngSpeedButton, Vcl.ComCtrls, Datasnap.DBClient, U_DataCorrida;

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
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pngspdbtnBuscarClick(Sender: TObject);
    procedure dbgrdPedidosDblClick(Sender: TObject);
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
  LDESistemas.Producao.View.Producao.Nova, UDM, UFrm_Inicial;

{$R *.dfm}

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

  {Preenche Espa�o Image}
  Top := Frm_Inicial.pnlRodape.Height;
  Left := Frm_Inicial.pnlFundo.Left+10;
  Width := Frm_Inicial.pnlFundo.Width -20;
  Height := Frm_Inicial.pnlFundo.Height-50;
end;

procedure TFrmProducaoPesquisa.Iniciar;
begin
  dtp1.Date := IncMonth(Date, -1);
  dtp2.Date := Date;
end;

procedure TFrmProducaoPesquisa.pngspdbtnBuscarClick(Sender: TObject);
begin
  inherited;
  CarregarGrid;
end;

end.
