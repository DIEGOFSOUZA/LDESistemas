unit UFrm_PDVDevItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient;

type
  TFrm_PDVDevItem = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlRodape: TPanel;
    pnlTotais: TPanel;
    pnlConfirmar: TPanel;
    pnlDevolv: TPanel;
    pnlConfirma: TPanel;
    btnConfirma: TSpeedButton;
    actConfirma: TAction;
    pnlDevCenter: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblVInicial: TLabel;
    lblVDevolvido: TLabel;
    lblVAtual: TLabel;
    pnlOpcao: TPanel;
    Label4: TLabel;
    cbbOpcao: TComboBox;
    pnlCenter: TPanel;
    pnlCliente: TPanel;
    lblTitPreco: TLabel;
    pnlItem: TPanel;
    lbl1: TLabel;
    Label5: TLabel;
    edtCPFCNPJ: TEdit;
    Label6: TLabel;
    edtTelefone: TEdit;
    Label7: TLabel;
    edtEMAIL: TEdit;
    Label8: TLabel;
    edtCEP: TEdit;
    edtENDERECO: TEdit;
    Label9: TLabel;
    edtBairro: TEdit;
    Label10: TLabel;
    edtNumero: TEdit;
    Label11: TLabel;
    edtCompl: TEdit;
    Label12: TLabel;
    pnlGrid: TPanel;
    pnlQtdeADevolver: TPanel;
    pnlTitVendas: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    pnlGrid1: TPanel;
    dbgrdVendas: TDBGrid;
    dsItens: TDataSource;
    cdsItens: TClientDataSet;
    cdsItensID: TIntegerField;
    cdsItensTIPO: TStringField;
    cdsItensORDEM: TIntegerField;
    cdsItensID_PRODUTO: TIntegerField;
    cdsItensQTDE: TCurrencyField;
    cdsItensQTDE_BAIXA: TCurrencyField;
    cdsItensSALDO: TStringField;
    cdsItensDESCRI_PROD: TStringField;
    cdsItensCLIENTE: TStringField;
    cdsItensCEP: TStringField;
    cdsItensCPF_CNPJ: TStringField;
    cdsItensTELEFONE1: TStringField;
    cdsItensEMAIL: TStringField;
    cdsItensENDERECO: TStringField;
    cdsItensBAIRRO: TStringField;
    cdsItensNUMERO: TStringField;
    cdsItensCOMPLEMENTO: TStringField;
    cdsItensTOT_GERAL: TFMTBCDField;
    cdsItensTOTAL_DEV: TFMTBCDField;
    cdsItensTOT_ATUAL: TFMTBCDField;
    procedure actConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Executar(aTipo: string; aID: integer);
  end;

var
  Frm_PDVDevItem: TFrm_PDVDevItem;

implementation

uses
  UDM, u_Mensagem;  //Quantidade não pode ser superior à quantidade total do item.

{$R *.dfm}

procedure TFrm_PDVDevItem.actConfirmaExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_PDVDevItem.Executar(aTipo: string; aID: integer);
const
  SQL = 'select ID, TIPO, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, SALDO, DESCRI_PROD, CLIENTE, CEP, CPF_CNPJ, TELEFONE1, EMAIL,'+
        '       ENDERECO, BAIRRO, NUMERO, COMPLEMENTO, sum(VL_TOTAL) over() TOT_GERAL, sum(TOT_DEV) over() TOTAL_DEV,'+
        '       sum(VL_TOTAL - TOT_DEV) over() TOT_ATUAL '+
        'from (select A.ID, A.TIPO, A.ORDEM, A.ID_PRODUTO, A.QTDE, A.QTDE_BAIXA, A.VL_TOTAL,'+
        '             cast(cast((A.QTDE - A.QTDE_DISPONIVEL) as integer) || ''/'' || cast(A.QTDE as integer) as varchar(10)) SALDO, cast('+
        '             case '+
        '               when A.QTDE_DISPONIVEL = 0 then A.VL_TOTAL '+
        '               when (A.QTDE > A.QTDE_DISPONIVEL) then ((A.QTDE - A.QTDE_DISPONIVEL) * (A.VL_TOTAL / A.QTDE)) '+
        '               else 0 '+
        '             end as numeric(10,2)) TOT_DEV, P.NOME DESCRI_PROD, C.NOME_RAZAO CLIENTE, C.CEP, C.CPF_CNPJ, C.TELEFONE1,'+
        '             C.EMAIL, C.ENDERECO, C.BAIRRO, C.NUMERO, C.COMPLEMENTO '+
        '      from PDV_ITENS A '+
        '      left join PRODUTO P on (P.CODIGO = A.ID_PRODUTO) '+
        '      left join PDV_MASTER PM on (PM.ID = A.ID and '+
        '            PM.TIPO = A.TIPO) '+
        '      left join CLIENTE C on (C.CODIGO = PM.ID_CLIENTE) '+
        '      where A.TIPO = ''0'' and '+
        '            A.ID = %s)';
begin

end;

end.
