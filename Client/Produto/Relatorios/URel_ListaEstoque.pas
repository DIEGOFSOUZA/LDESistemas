unit URel_ListaEstoque;

interface           {H=165 W=499}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Relatorio.Cabecalho, Data.DB, Datasnap.DBClient, RLReport, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, RLFilters, RLPDFFilter,
  Vcl.Imaging.pngimage, Vcl.Buttons, UEDPesquisa, Vcl.ComCtrls;

type
  TRelListaEtoque = class(TPdr_RelatorioRetratoCabecalho)
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    cdsEstoque: TClientDataSet;
    dsEstoque: TDataSource;
    cdsEstoqueCODIGO: TIntegerField;
    cdsEstoqueNOME: TStringField;
    cdsEstoqueTIPO_PRODUTO: TStringField;
    cdsEstoqueSIGLA: TStringField;
    pnlFundo: TPanel;
    pnlFiltros: TPanel;
    Label4: TLabel;
    cbbTipoRel: TComboBox;
    pnlAcoes: TPanel;
    actlstAcoes: TActionList;
    actGerarRelatorio: TAction;
    actSair: TAction;
    Label5: TLabel;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    cdsEstoqueQTDE_ESTOQUE: TFloatField;
    pnlGerar: TPanel;
    btnGerar: TSpeedButton;
    imgGerar: TImage;
    pnlSair: TPanel;
    SpeedButton1: TSpeedButton;
    imgSair: TImage;
    rgOpcao: TRadioGroup;
    Label6: TLabel;
    RLDBText5: TRLDBText;
    cdsEstoqueQTDE_MINIMA: TFloatField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl1: TPanel;
    edpsqsProd: TEdPesquisa;
    Label7: TLabel;
    RLDBText6: TRLDBText;
    cdsEstoquePRECO_CUSTO: TCurrencyField;
    RLMemo1: TRLMemo;
    RLDBResult2: TRLDBResult;
    RLMemo2: TRLMemo;
    procedure actSairExecute(Sender: TObject);
    procedure RLDBText1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
    procedure btnGerarClick(Sender: TObject);
    procedure RelatorioBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edpsqsProdPesquisa(Sender: TObject; var Retorno: string);
  private
    procedure MontaSQL();
    procedure MontaParametros();
  public
    procedure Executar();
  end;

var
  RelListaEtoque: TRelListaEtoque;

implementation

{$R *.dfm}

uses
  UDM, UConsulta, u_Mensagem;

{ TRelListaEtoque }

procedure TRelListaEtoque.actSairExecute(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TRelListaEtoque.btnGerarClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    MontaParametros;
    MontaSQL;
    Relatorio.PreviewModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TRelListaEtoque.edpsqsProdPesquisa(Sender: TObject;
  var Retorno: string);
var
  aRetProd: TRetornoProduto;
begin
  inherited;
  aRetProd := Consulta.Produto('''PA'',''A''','Consulta de Produtos/Matéria-Prima') ;

  Retorno := IntToStr(aRetProd.iCodigo) ;
end;

procedure TRelListaEtoque.Executar;
begin
  MontaParametros;
  MontaSQL();
  Relatorio.PreviewModal;
end;

procedure TRelListaEtoque.MontaParametros;
begin
  rlMemoParametros.Lines.Clear;
  rlMemoParametros.Lines.Add('LEGENDA:');
  rlMemoParametros.Lines.Add(' MP=MATÉRIA-PRIMA, PA=PRODUTO-ACABADO,');
  rlMemoParametros.Lines.Add(' A=AMBOS');
end;

procedure TRelListaEtoque.MontaSQL;
var
  SQL: string;
  lWhere: string;
begin
  lWhere := ' where ';
  SQL := 'SELECT a.codigo,a.nome,'+
         'cast(a.qtde_estoque as double precision)qtde_estoque,'+
         'a.tipo_produto,coalesce(e.sigla,d.sigla) sigla,'+
         'cast(a.qtde_minima as double precision)qtde_minima,'+
         'cast(a.preco_custo*a.qtde_estoque as double precision) preco_custo '+
         'FROM PRODUTO a '+
         'left join UNIDADE d on (d.CODIGO = a.COD_UNIDADE) '+
         'left join UNIDADE e on (e.CODIGO = A.conv_unidade) ';

  if pgc1.TabIndex = 0 then
  begin
    case cbbTipoRel.ItemIndex of
      1:
        begin
          SQL := SQL + lWhere + 'a.tipo_produto = ' + QuotedStr('MP');
          lWhere := ' and ';
        end;
      2:
        begin
          SQL := SQL + lWhere + 'a.tipo_produto = ' + QuotedStr('A');
          lWhere := ' and ';
        end;
      3:
        begin
          SQL := SQL + lWhere + 'a.tipo_produto = ' + QuotedStr('PA');
          lWhere := ' and ';
        end;
    end;

    case rgOpcao.ItemIndex of
      0:
        begin
          SQL := SQL + lWhere + 'a.QTDE_ESTOQUE > 0 ';
        end;
      1:
        begin
          SQL := SQL + lWhere + 'a.QTDE_ESTOQUE < 0 ';
        end;
      2:
        begin
          SQL := SQL + lWhere + 'a.QTDE_ESTOQUE = 0 ';
        end;
      3:
        begin
          SQL := SQL + lWhere + 'a.QTDE_ESTOQUE < a.QTDE_MINIMA';
        end;
    end;
    SQL := SQL + ' order by (a.nome)';
  end
  else
  begin
    if ((edpsqsProd.Campo.Text <> '') and (edpsqsProd.Campo.Text <> '0')) then
    begin
      SQL := SQL + lWhere + 'a.codigo = ' + edpsqsProd.Campo.Text;
      lWhere := ' and ';
    end
    else
    begin
      TMensagem.Atencao('Informe o produto a consultar.');
      Exit;
    end;
  end;

  cdsEstoque.Close;
  cdsEstoque.Data := DM.LerDataSet(SQL);
end;

procedure TRelListaEtoque.RelatorioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblEmpFantasia.Caption := DM.Empresa.Fantasia;
  rlblNomeRelatorio.Caption := 'Relatório de Estoque';
end;

procedure TRelListaEtoque.RLDBText1BeforePrint(Sender: TObject; var AText: string; var PrintIt: Boolean);
begin
  inherited;
  AText := cdsEstoqueTIPO_PRODUTO.AsString + ' | ' + AText;
end;

end.

