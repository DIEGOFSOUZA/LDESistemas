unit UFrm_Pedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, UDBPesquisa, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, UEDPesquisa,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrm_Pedido = class(TPdr_Cad2)
    pnlPedido: TPanel;
    lbl2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBPesquisa1: TDBPesquisa;
    pnlCliente: TPanel;
    Label3: TLabel;
    pgcCliente: TPageControl;
    tsFaturamento: TTabSheet;
    pnlCliEnderecos: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    pnlSalvar: TPanel;
    imgSalvar: TImage;
    btnSalvar: TSpeedButton;
    tsEntrega: TTabSheet;
    pnlEndEntrega: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    dbedt5: TDBEdit;
    pnlSalvarEntrega: TPanel;
    imgSalvarEntrega: TImage;
    btnSalvarEntrega: TSpeedButton;
    pnlItens: TPanel;
    Label15: TLabel;
    pnlProdAdd: TPanel;
    pnlAdd: TPanel;
    btnAddItem: TSpeedButton;
    actAddPedido: TAction;
    pnlTotalItem: TPanel;
    Label16: TLabel;
    lblTotItem: TLabel;
    pnlVlUnitario: TPanel;
    lbl8: TLabel;
    lblUnitario: TLabel;
    pnlQtde: TPanel;
    edtQtde: TEdit;
    btnMais: TSpeedButton;
    actMais: TAction;
    actMenos: TAction;
    btnMenos: TSpeedButton;
    cbbUM: TComboBox;
    lblUM: TLabel;
    actUM: TAction;
    pnlUM: TPanel;
    imgUM: TImage;
    btnUM: TSpeedButton;
    pnlItem: TPanel;
    edpsqsProduto: TEdPesquisa;
    pnlGrid: TPanel;
    pnlAcaoGrid: TPanel;
    pnlAlocaGrid: TPanel;
    dbgrd1: TDBGrid;
    pnlSubTotal: TPanel;
    tsDados: TTabSheet;
    pnlCliTopo: TPanel;
    DBPesquisa2: TDBPesquisa;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    pnlSubTot: TPanel;
    lbl9: TLabel;
    lblSubTotal: TLabel;
    pnl1: TPanel;
    pnlFreteOutros: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Label17: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    lblTotFinal: TLabel;
    pnlRight: TPanel;
    pnlPagamento: TPanel;
    Label21: TLabel;
    pnlPag0: TPanel;
    pnlPagLeft: TPanel;
    pnlPagTotal: TPanel;
    pnlPagParcelamento: TPanel;
    pnlPagGerar: TPanel;
    btnPagGerar: TSpeedButton;
    actGeraContas: TAction;
    Label22: TLabel;
    lblPagTotal: TLabel;
    Label24: TLabel;
    cbbFormaPagto: TComboBox;
    Label25: TLabel;
    ComboBox1: TComboBox;
    Label26: TLabel;
    edtPagValor: TEdit;
    pnlGridPagamento: TPanel;
    pnlTitPagto: TPanel;
    pnlExcDup: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    dsDuplicata: TClientDataSet;
    sDuplicata: TDataSource;
    dbgrdPagto: TDBGrid;
    pnlbtnExcDup: TPanel;
    btnExcDup: TSpeedButton;
    actExcDuplicatas: TAction;
    procedure actAddPedidoExecute(Sender: TObject);
    procedure actMaisExecute(Sender: TObject);
    procedure actMenosExecute(Sender: TObject);
    procedure actUMExecute(Sender: TObject);
    procedure actGeraContasExecute(Sender: TObject);
    procedure edtPagValorKeyPress(Sender: TObject; var Key: Char);
    procedure actExcDuplicatasExecute(Sender: TObject);
  private
    procedure FormatarComoMoeda(pEdit: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  Frm_Pedido: TFrm_Pedido;

implementation

{$R *.dfm}

procedure TFrm_Pedido.actAddPedidoExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_Pedido.actExcDuplicatasExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_Pedido.actGeraContasExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_Pedido.actMaisExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_Pedido.actMenosExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_Pedido.actUMExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_Pedido.edtPagValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  FormatarComoMoeda(edtPagValor,Key);
end;

procedure TFrm_Pedido.FormatarComoMoeda(pEdit: TObject; var Key: Char);
var
  str_valor: string;
  dbl_valor: double;
begin

   { verificando se estamos recebendo o TEdit realmente }
  if pEdit is TEdit then
  begin
      { se tecla pressionada e' um numero, backspace ou del deixa passar }
    if (Key in ['0'..'9', #8, #9]) then
    begin
         { guarda valor do TEdit com que vamos trabalhar }
      str_valor := TEdit(pEdit).Text;
         { verificando se nao esta vazio }
      if str_valor = EmptyStr then
        str_valor := '0,00';
         { se valor numerico ja insere na string temporaria }
      if Key in ['0'..'9'] then
        str_valor := Concat(str_valor, Key);
         { retira pontos e virgulas se tiver! }
      str_valor := Trim(StringReplace(str_valor, '.', '', [rfReplaceAll, rfIgnoreCase]));
      str_valor := Trim(StringReplace(str_valor, ',', '', [rfReplaceAll, rfIgnoreCase]));
         {inserindo 2 casas decimais}
      dbl_valor := StrToFloat(str_valor);
      dbl_valor := (dbl_valor / 100);

         {reseta posicao do tedit}
      TEdit(pEdit).SelStart := Length(TEdit(pEdit).Text);
         {retornando valor tratado ao TEdit}
      TEdit(pEdit).Text := FormatFloat('###,##0.00', dbl_valor);
    end;
      {se nao e' key relevante entao reseta}
    if not (Key in [#8, #9]) then
      Key := #0;
  end;
end;

end.
