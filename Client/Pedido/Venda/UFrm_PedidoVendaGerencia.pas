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
    procedure dbgrdPedidosCellClick(Column: TColumn);
    procedure dbgrdPedidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdPedidosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrdPedidosTitleClick(Column: TColumn);
    procedure actNovoPedidoExecute(Sender: TObject);
    procedure actAvancaStatusExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedidoVendaGerencia: TFrm_PedidoVendaGerencia;

implementation

uses
  System.Math, UFrmPedido_Venda;

{$R *.dfm}

procedure TFrm_PedidoVendaGerencia.actAvancaStatusExecute(Sender: TObject);
begin
  inherited;
//
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
  finally
    FreeAndNil(FrmPedido_Venda);
    AlphaBlend := False;
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

end.
