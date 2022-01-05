unit UFrm_PedidoVendaGerencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Child2, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, UEDPesquisa, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient;

type
  TFrm_PedidoVendaGerencia = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlTop: TPanel;
    rgTipoPesquisa: TRadioGroup;
    nbPesquisa: TNotebook;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    edpesCliente: TEdPesquisa;
    edpesVendedor: TEdPesquisa;
    pnlConsDup: TPanel;
    imgConsDup: TImage;
    lblConsDup: TLabel;
    Label3: TLabel;
    edtNumPed: TEdit;
    pnlRight: TPanel;
    pnlAdicionar: TPanel;
    imgAdicionar: TImage;
    lblAdicionar: TLabel;
    pnlAvancaStatus: TPanel;
    imgAvancaStatus: TImage;
    lblAvancaStatus: TLabel;
    rgStatus: TRadioGroup;
    pnlClient: TPanel;
    pnlRodape: TPanel;
    dbgrdPedidos: TDBGrid;
    cdsPedidos: TClientDataSet;
    dsPedidos: TDataSource;
    cdsPedidosSELECAO: TIntegerField;
    cdsPedidosID_PEDIDO: TIntegerField;
    cdsPedidosEMISSAO: TDateField;
    cdsPedidosENTREGA: TDateField;
    cdsPedidosCLIENTE: TStringField;
    cdsPedidosSTATUS: TStringField;
    cdsPedidosVENDEDOR: TStringField;
    chkSelTudo: TCheckBox;
    cdsPedidosVALOR: TCurrencyField;
    actNovoPedido: TAction;
    actAvancaStatus: TAction;
    actPesquisar: TAction;
    actExcluirPedido: TAction;
    pnlExcluirPedido: TPanel;
    imgExcluirPedido: TImage;
    lblExcluirPedido: TLabel;
    actEditarPedido: TAction;
    cdsPedidosGERAR_ORDEM_PRODUCAO: TIntegerField;
    procedure dbgrdPedidosCellClick(Column: TColumn);
    procedure dbgrdPedidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdPedidosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrdPedidosTitleClick(Column: TColumn);
    procedure actNovoPedidoExecute(Sender: TObject);
    procedure actAvancaStatusExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgTipoPesquisaClick(Sender: TObject);
    procedure edpesClientePesquisa(Sender: TObject; var Retorno: string);
    procedure edpesVendedorPesquisa(Sender: TObject; var Retorno: string);
    procedure actExcluirPedidoExecute(Sender: TObject);
    procedure actEditarPedidoExecute(Sender: TObject);
    procedure dbgrdPedidosDblClick(Sender: TObject);
  private
    procedure PedidosAvancaStatus();
    function AvancaStatus(aStatus: string): string;
    procedure ExcluirPedidos();
    function IsContasAReceber(aIDPedido: integer): Boolean;
  public
    FExibeMensagemReceber: Boolean;
  end;

var
  Frm_PedidoVendaGerencia: TFrm_PedidoVendaGerencia;

implementation

uses
  System.Math, UFrmPedido_Venda, UDM, u_Mensagem, UConsulta, UMakeReadWrite,
  System.StrUtils;


{$R *.dfm}

procedure TFrm_PedidoVendaGerencia.actAvancaStatusExecute(Sender: TObject);
begin
  inherited;
  if not cdsPedidos.IsEmpty then
    PedidosAvancaStatus;
  if FExibeMensagemReceber then
  begin
    FExibeMensagemReceber := False;
    TMensagem.Atencao('Alguns dos Pedido(s) selecionado não avançou de status por não ter a forma de pagamento informada.');
  end;
end;

procedure TFrm_PedidoVendaGerencia.actExcluirPedidoExecute(Sender: TObject);
begin
  inherited;
  if not cdsPedidos.IsEmpty then
    if TMensagem.Pergunta('Confirma a exclusão do(s) Pedido(s) marcados?') then
      ExcluirPedidos;
end;

procedure TFrm_PedidoVendaGerencia.actNovoPedidoExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmPedido_Venda) then
    FrmPedido_Venda := TFrmPedido_Venda.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    FrmPedido_Venda.NovoPedido;
    FrmPedido_Venda.ShowModal;
    actPesquisar.Execute;
  finally
    FreeAndNil(FrmPedido_Venda);
    AlphaBlend := False;
  end;
end;

procedure TFrm_PedidoVendaGerencia.actEditarPedidoExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmPedido_Venda) then
    FrmPedido_Venda := TFrmPedido_Venda.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    FrmPedido_Venda.EditarPedido(cdsPedidosID_PEDIDO.AsInteger);
    FrmPedido_Venda.ShowModal;
    actPesquisar.Execute;
  finally
    FreeAndNil(FrmPedido_Venda);
    AlphaBlend := False;
  end;
end;

procedure TFrm_PedidoVendaGerencia.actPesquisarExecute(Sender: TObject);
var
  SQL: string;
begin
  inherited;
  SQL := 'select cast(0 as integer) SELECAO, P.ID ID_PEDIDO, P.EMISSAO,'+
         'P.ENTREGA, C.NOME_RAZAO CLIENTE, R.NOME VENDEDOR, P.STATUS,'+
         'cast(sum(pi.TOTAL)as double precision) VALOR,'+
         'P.GERAR_ORDEM_PRODUCAO '+
         'from PEDIDO_VENDA P '+
         'left join CLIENTE C on (C.CODIGO = P.ID_CLIENTE) '+
         'left join REPRESENTANTE R on (R.CODIGO = P.ID_VENDEDOR) '+
         'left join PEDIDO_VENDA_ITEM pi on (pi.ID_PEDIDO = P.ID) ';
  case rgTipoPesquisa.ItemIndex of
    0:
      SQL := SQL + 'where p.emissao between '+QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date))+
                                      ' and '+QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date));
    1:
      SQL := SQL + 'where p.id_cliente = ' + edpesCliente.Campo.Text;
    2:
      SQL := SQL + 'where p.id_vendedor = ' + edpesVendedor.Campo.Text;
    3:
      SQL := SQL + 'where p.status = ' + QuotedStr(rgStatus.Items[rgStatus.ItemIndex]);
    4:
      SQL := SQL + 'where p.id = ' + edtNumPed.Text;
  end;
  SQL := SQL + ' group by P.ID, P.EMISSAO, P.ENTREGA, C.NOME_RAZAO, R.NOME, P.STATUS,'+
               'P.GERAR_ORDEM_PRODUCAO ';

  try
    cdsPedidos.Close;
    cdsPedidos.Data := DM.LerDataSet(SQL);
    MakeReadWrite(cdsPedidosSELECAO);
    if cdsPedidos.IsEmpty then
      TMensagem.Informacao('Nenhum pedido encontrado.');
  except
    TMensagem.Informacao('Pedido(s) não encontrado(s).');
  end;
end;

function TFrm_PedidoVendaGerencia.AvancaStatus(aStatus: string): string;
begin
  case IndexStr(aStatus,['DIGITADO','APROVADO','PRODUÇÃO','CONCLUÍDO']) of
    0:
      Result := 'APROVADO';
    1:
      Result := 'PRODUÇÃO';
    2:
      Result := 'CONCLUÍDO';
    3:
      Result := 'DIGITADO';
  end;
end;

procedure TFrm_PedidoVendaGerencia.dbgrdPedidosCellClick(Column: TColumn);
begin
  inherited;
  if (dbgrdPedidos.SelectedField.FieldName = 'SELECAO') then
  begin
    cdsPedidos.Edit;
    cdsPedidos.FieldByName('SELECAO').AsInteger := IfThen(cdsPedidos.FieldByName('SELECAO').AsInteger = 1, 0, 1);
    cdsPedidos.Post;
  end;
end;

procedure TFrm_PedidoVendaGerencia.dbgrdPedidosDblClick(Sender: TObject);
begin
  inherited;
  actEditarPedido.Execute;
end;

procedure TFrm_PedidoVendaGerencia.dbgrdPedidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  inherited;

  if ((Sender as TDBGrid).DataSource.Dataset.IsEmpty) then
    Exit;

  // Desenha um checkbox no dbgrid
  if (Column.FieldName = 'SELECAO') then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);

    if ((Sender as TDBGrid).DataSource.Dataset.FieldByName('SELECAO').AsInteger = 1) then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminue o tamanho do CheckBox }
    DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TFrm_PedidoVendaGerencia.dbgrdPedidosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if ((Key = #32) and (not cdsPedidos.IsEmpty)) then
  begin
    if (dbgrdPedidos.SelectedField.FieldName = 'SELECAO') then
    begin
      cdsPedidos.Edit;
      cdsPedidos.FieldByName('SELECAO').AsInteger := IfThen(cdsPedidos.FieldByName('SELECAO').AsInteger = 1, 0, 1);
      cdsPedidos.Post;
    end;
  end;
end;

procedure TFrm_PedidoVendaGerencia.dbgrdPedidosTitleClick(Column: TColumn);
begin
  inherited;
  cdsPedidos.IndexFieldNames := Column.FieldName ;
end;

procedure TFrm_PedidoVendaGerencia.edpesClientePesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Cliente.ToString;
end;

procedure TFrm_PedidoVendaGerencia.edpesVendedorPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Representante.ToString;
end;

procedure TFrm_PedidoVendaGerencia.ExcluirPedidos;
var
  lPedidos: TClientDataSet;
begin
  cdsPedidos.DisableControls;
  lPedidos := TClientDataSet.Create(nil);
  try
    lPedidos.FieldDefs.Add('ID_PEDIDO',ftInteger);
    lPedidos.CreateDataSet;
    cdsPedidos.First;
    while not cdsPedidos.Eof do
    begin
      if (cdsPedidos.FieldByName('SELECAO').AsInteger = 1) then
      begin
        lPedidos.Append;
        lPedidos.FieldByName('ID_PEDIDO').AsInteger := cdsPedidos.FieldByName('ID_PEDIDO').AsInteger;
        lPedidos.Post;
      end;
      cdsPedidos.Next;
    end;

    if (DM.SMPedido.PedidoVenda_Excluir(DM.BancoDados, lPedidos.Data) = 1) then
      actPesquisar.Execute;
  finally
    FreeAndNil(lPedidos);
    cdsPedidos.EnableControls;
  end;
end;

procedure TFrm_PedidoVendaGerencia.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := Date;
  dtp2.Date := Date;
  rgTipoPesquisa.ItemIndex := 0;
  nbPesquisa.PageIndex := 0;
end;

function TFrm_PedidoVendaGerencia.IsContasAReceber(aIDPedido: integer): Boolean;
const
  SQL = 'select c.id from contas_a_receber c '+
        'where c.tipo = 1 and '+
        'c.id_tabela_master = %s';
begin
  Result := False;
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[aIDPedido.ToString]));
  if not DM.dsConsulta.IsEmpty then
    Result := True;
end;

procedure TFrm_PedidoVendaGerencia.PedidosAvancaStatus;
var
  lPedidos: TClientDataSet;
  lProximoStatus: string;
begin
  cdsPedidos.DisableControls;
  lPedidos := TClientDataSet.Create(nil);
  try
    lPedidos.FieldDefs.Add('ID_PEDIDO',ftInteger);
    lPedidos.FieldDefs.Add('STATUS',ftString,50);
    lPedidos.FieldDefs.Add('USUARIO',ftString,30);
    lPedidos.FieldDefs.Add('GERAR_ORDEM_PRODUCAO',ftInteger);
    lPedidos.CreateDataSet;
    cdsPedidos.First;
    while not cdsPedidos.Eof do
    begin
      if ((cdsPedidos.FieldByName('SELECAO').AsInteger = 1) and (cdsPedidos.FieldByName('STATUS').AsString <> 'CONCLUÍDO')) then
      begin
        lProximoStatus := AvancaStatus(cdsPedidos.FieldByName('STATUS').AsString);
        if ((FExibeMensagemReceber = False) and
            (lProximoStatus = 'APROVADO') and
            (not IsContasAReceber(cdsPedidos.FieldByName('ID_PEDIDO').AsInteger))) then
        begin
          FExibeMensagemReceber := True;
        end
        else
        begin
          lPedidos.Append;
          lPedidos.FieldByName('ID_PEDIDO').AsInteger := cdsPedidos.FieldByName('ID_PEDIDO').AsInteger;
          lPedidos.FieldByName('STATUS').AsString := lProximoStatus;
          lPedidos.FieldByName('USUARIO').AsString := DM.Usuario.Login;
          lPedidos.FieldByName('GERAR_ORDEM_PRODUCAO').AsInteger := cdsPedidos.FieldByName('GERAR_ORDEM_PRODUCAO').AsInteger;
          lPedidos.Post;
        end;
      end;
      cdsPedidos.Next;
    end;

    if not lPedidos.IsEmpty then
      if (DM.SMPedido.PedidoVenda_AvancaStatus(DM.BancoDados, lPedidos.Data) = 1) then
        actPesquisar.Execute;
  finally
    FreeAndNil(lPedidos);
    cdsPedidos.EnableControls;
  end;
end;

procedure TFrm_PedidoVendaGerencia.rgTipoPesquisaClick(Sender: TObject);
begin
  inherited;
  nbPesquisa.PageIndex := rgTipoPesquisa.ItemIndex;
end;

end.
