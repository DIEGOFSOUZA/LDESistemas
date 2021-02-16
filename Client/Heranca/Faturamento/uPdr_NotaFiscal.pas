unit uPdr_NotaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.Mask,
  UDBPesquisa, Data.DB, Vcl.Grids, Vcl.DBGrids, UEDPesquisa, System.Actions,
  Vcl.ActnList;

type
  TPdr_NotaFiscal = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlleft: TPanel;
    pnlDados: TPanel;
    Label1: TLabel;
    cbbTipoNF: TComboBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    dtpEmissao: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    dbmmoLog: TDBMemo;
    lbl2: TLabel;
    pnlClienteFornecedor: TPanel;
    Label6: TLabel;
    pgcCliente: TPageControl;
    tsDados: TTabSheet;
    pnlCliTopo: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBPesquisa2: TDBPesquisa;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit5: TDBEdit;
    tsFaturamento: TTabSheet;
    pnlCliEnderecos: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
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
    dbrgrpPJPF: TDBRadioGroup;
    Label17: TLabel;
    pnlCFOP: TPanel;
    Label18: TLabel;
    Label23: TLabel;
    ComboBox2: TComboBox;
    DBPesquisa1: TDBPesquisa;
    pnlFreteOutros: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    pnlItens: TPanel;
    Label24: TLabel;
    pnlProdAdd: TPanel;
    pnlAdd: TPanel;
    btnAddItem: TSpeedButton;
    pnlTotalItem: TPanel;
    Label25: TLabel;
    lblTotItem: TLabel;
    pnlVlUnitario: TPanel;
    lbl8: TLabel;
    lblUnitario: TLabel;
    pnlQtde: TPanel;
    btnMais: TSpeedButton;
    btnMenos: TSpeedButton;
    lblUM: TLabel;
    edtQtde: TEdit;
    pnlUM: TPanel;
    imgUM: TImage;
    btnUM: TSpeedButton;
    pnlItem: TPanel;
    edpsqsProduto: TEdPesquisa;
    pnlGrid: TPanel;
    pnlAcaoGrid: TPanel;
    pnlAlocaGrid: TPanel;
    dbgrd1: TDBGrid;
    cbbUM: TComboBox;
    pnlSubTotal: TPanel;
    pnlSubTot: TPanel;
    lbl9: TLabel;
    lblSubTotal: TLabel;
    pnl1: TPanel;
    pnlRight: TPanel;
    pnlPagamento: TPanel;
    Label27: TLabel;
    pnlPag0: TPanel;
    pnlPagLeft: TPanel;
    pnlPagTotal: TPanel;
    Label28: TLabel;
    lblPagTotal: TLabel;
    pnlPagParcelamento: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cbbFormaPagto: TComboBox;
    ComboBox3: TComboBox;
    edtPagValor: TEdit;
    pnlPagGerar: TPanel;
    btnPagGerar: TSpeedButton;
    pnlGridPagamento: TPanel;
    pnlTitPagto: TPanel;
    pnlExcDup: TPanel;
    pnlbtnExcDup: TPanel;
    btnExcDup: TSpeedButton;
    dbgrdPagto: TDBGrid;
    actlst1: TActionList;
    pnlNumNF: TPanel;
    Label32: TLabel;
    DBEdit2: TDBEdit;
    Label33: TLabel;
    DBEdit3: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lblTotFinal: TLabel;
    Label26: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit1: TDBEdit;
    pnlTransporte: TPanel;
    Label34: TLabel;
    dbpsqsTransporte: TDBPesquisa;
    Label35: TLabel;
    DBComboBox1: TDBComboBox;
    Label36: TLabel;
    DBEdit16: TDBEdit;
    Label37: TLabel;
    DBEdit17: TDBEdit;
    Label38: TLabel;
    DBComboBox2: TDBComboBox;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label43: TLabel;
    DBEdit22: TDBEdit;
    Label44: TLabel;
    DBEdit23: TDBEdit;
    Label45: TLabel;
    DBEdit24: TDBEdit;
    Label46: TLabel;
    DBEdit25: TDBEdit;
    Label47: TLabel;
    DBEdit26: TDBEdit;
    Label48: TLabel;
    DBEdit27: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_NotaFiscal: TPdr_NotaFiscal;

implementation

{$R *.dfm}

end.
