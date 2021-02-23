unit UFrm_GeraOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, UEDPesquisa, Vcl.Imaging.pngimage,
  Vcl.Buttons,Datasnap.DBClient, Data.DB, System.DateUtils;

type
  TFrm_GeraOrcamento = class(TPdr_Child2)
    pnlFundo0: TPanel;
    pnlTopo: TPanel;
    pnlDetalhe: TPanel;
    pnlRodape: TPanel;
    pnlPagamento: TPanel;
    lbl2: TLabel;
    Label2: TLabel;
    cbbFPagto: TComboBox;
    Label3: TLabel;
    edpesParc: TEdPesquisa;
    Label4: TLabel;
    chkSolic: TCheckBox;
    Label5: TLabel;
    cbbTipoLib: TComboBox;
    Label6: TLabel;
    mmo1: TMemo;
    pnlBtnSalvar: TPanel;
    btnBaixar: TSpeedButton;
    imgSalvar: TImage;
    pnlBtnCancel: TPanel;
    btnCancelar: TSpeedButton;
    imgCancelar: TImage;
    dsOrcamento: TClientDataSet;
    dsOrcamentoID: TIntegerField;
    dsOrcamentoEMISSAO: TDateField;
    dsOrcamentoID_CLIENTE: TIntegerField;
    dsOrcamentoID_FORMAPAGTO: TIntegerField;
    dsOrcamentoUSUARIO: TStringField;
    dsOrcamentoSTATUS: TStringField;
    dsOrcamentoDT_VALIDADE: TDateField;
    dsOrcamentoSOLICITACAO: TMemoField;
    dsOrcamentoLIBERADO: TStringField;
    dsOrcamentoTIPO_LIBERACAO: TStringField;
    dsOrcamentoUSU_LIBEROU: TStringField;
    dsOrcamentofdqryOrPagar: TDataSetField;
    dsOrcamentofdqryOrItem: TDataSetField;
    dsOrItem: TClientDataSet;
    dsOrItemID_ORCAMENTO: TIntegerField;
    dsOrItemORDEM: TIntegerField;
    dsOrItemID_PROD: TIntegerField;
    dsOrItemQTDE: TFMTBCDField;
    dsOrItemVUNIT: TFMTBCDField;
    dsOrItemVDESC: TFMTBCDField;
    dsOrItemUNID: TStringField;
    dsOrItemQTDE_BAIXA: TFMTBCDField;
    actSalvar: TAction;
    actCancelar: TAction;
    procedure edpesParcPesquisa(Sender: TObject; var Retorno: string);
    procedure chkSolicClick(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    FGetRetorno: string;
    procedure GeraOrcamento();
  public
    var
      cdsItens: TClientDataSet;
      IdCli: Integer;
      property
      Retorno: string read FGetRetorno;
    procedure Executa(aItens: TClientDataSet; aIdCli: integer);
  end;

var
  Frm_GeraOrcamento: TFrm_GeraOrcamento;

implementation

uses
  UDM, u_Mensagem, UConsulta;

{$R *.dfm}

procedure TFrm_GeraOrcamento.actCancelarExecute(Sender: TObject);
begin
  inherited;
  FGetRetorno := 'cancel';
  Close;
end;

procedure TFrm_GeraOrcamento.actSalvarExecute(Sender: TObject);
begin
  inherited;
  GeraOrcamento;
  if DM.SMOrcamento.setOrcamento(DM.BancoDados, 0, dsOrcamento.Delta) then
  begin
    FGetRetorno := 'sucesso';
  end
  else
  begin
    FGetRetorno := 'erro';
  end;
  Close;
end;

procedure TFrm_GeraOrcamento.chkSolicClick(Sender: TObject);
begin
  inherited;
  if chkSolic.Checked then
  begin
    pnlDetalhe.Visible := True;
    Self.Height := Self.Height+150;
  end
  else
  begin
    pnlDetalhe.Visible := False;
    Self.Height := Self.Height-150;
  end;
end;

procedure TFrm_GeraOrcamento.edpesParcPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.CondPagto.ToString;
end;

procedure TFrm_GeraOrcamento.Executa(aItens: TClientDataSet;
  aIdCli: integer);
begin
  IdCli := aIdCli;
  if not Assigned(cdsItens) then
    cdsItens := TClientDataSet.Create(nil);

  cdsItens.Data := aItens.Data;
  Self.Height := Self.Height-150;
//  Self.Left := Self.Left-200;
//  Self.Top := Self.Top-500;
  ShowModal;

end;

procedure TFrm_GeraOrcamento.GeraOrcamento;
begin
  dsOrcamento.Close;
  dsOrcamento.Data := DM.SMOrcamento.getOrcamento(DM.BancoDados, -1);

  dsOrcamento.Append;
  dsOrcamento.FieldByName('id').AsInteger := 0;
  dsOrcamento.FieldByName('emissao').AsDateTime := Date;
  dsOrcamento.FieldByName('id_cliente').AsInteger := IdCli;
  dsOrcamento.FieldByName('dt_validade').AsDateTime := IncDay(Date, 30);
  dsOrcamento.FieldByName('usuario').AsString := DM.UsuarioDataHora;
  dsOrcamento.FieldByName('status').AsString := 'EM ABERTO'; //EM ABERTO|VENDIDO|CANCELADO
  if (edpesParc.Campo.Text <> '') then
    dsOrcamento.FieldByName('id_formapagto').AsInteger := StrToInt(edpesParc.Campo.Text);
  if (chkSolic.Checked) then
  begin
    dsOrcamento.FieldByName('liberado').AsString := 'NAO'; //SIM|NAO
    dsOrcamento.FieldByName('tipo_liberacao').AsString := cbbTipoLib.Text; //CLIENTE INADIMPLENTE|DESCONTO|OUTROS
    dsOrcamento.FieldByName('solicitacao').AsString := mmo1.Lines.Text;
  end;
  dsOrcamento.Post;

  cdsItens.First;
  while not cdsItens.Eof do
  begin
    dsOrItem.Append;
    dsOrItem.FieldByName('id_orcamento').AsInteger := 0;
    dsOrItem.FieldByName('ordem').AsInteger := cdsItens.FieldByName('ordem').AsInteger;
    dsOrItem.FieldByName('id_prod').AsInteger := cdsItens.FieldByName('codigo').AsInteger;
    dsOrItem.FieldByName('qtde').AsFloat := cdsItens.FieldByName('qtde').AsFloat;
    dsOrItem.FieldByName('vunit').AsCurrency := cdsItens.FieldByName('preco_venda').AsCurrency;
    dsOrItem.FieldByName('vdesc').AsCurrency := cdsItens.FieldByName('vl_desconto').AsCurrency;
    dsOrItem.FieldByName('unid').AsString := cdsItens.FieldByName('unidade').AsString;
    dsOrItem.FieldByName('qtde_baixa').AsFloat := cdsItens.FieldByName('qtde_baixa').AsFloat;
    dsOrItem.Post;
    cdsItens.Next;
  end;
end;

end.
