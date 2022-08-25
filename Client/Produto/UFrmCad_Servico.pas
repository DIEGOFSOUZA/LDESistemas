unit UFrmCad_Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, UDBPesquisa;

type
  TFrmCad_Servico = class(TPdr_Cad)
    cdsCODIGO: TIntegerField;
    cdsNOME: TStringField;
    cdsPRECO_VENDA: TCurrencyField;
    cdsCOD_UNIDADE: TIntegerField;
    cdsPRECO_CUSTO: TCurrencyField;
    cdsSITUACAO: TStringField;
    cdsSIGLA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    dbpsqsUnidade: TDBPesquisa;
    cdsULTIMA_ALTERACAO: TStringField;
    dbcbbSITUACAO: TDBComboBox;
    Label20: TLabel;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbpsqsUnidadePesquisa(Sender: TObject; var Retorno: string);
    procedure cdsBeforePost(DataSet: TDataSet);
  private
    procedure MontaSql(pCodigo: Integer);
    function Validar(): Boolean;
  public
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  FrmCad_Servico: TFrmCad_Servico;

implementation

uses
  UDM, u_Mensagem, UConsulta, UMakeReadWrite;

{$R *.dfm}

procedure TFrmCad_Servico.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPRECO_CUSTO.AsCurrency := 0;
  cdsPRECO_VENDA.AsCurrency := 0;
  cdsCODIGO.AsInteger := 0;
  cdsSITUACAO.AsString := 'ATIVO';
  DBEdit2.SetFocus;
end;

procedure TFrmCad_Servico.cdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsULTIMA_ALTERACAO.AsString := DM.UsuarioDataHora;
end;

procedure TFrmCad_Servico.dbpsqsUnidadePesquisa(Sender: TObject; var Retorno: string);
var
  aRet: TRetornoUnidade;
begin
  inherited;
  aRet := Consulta.Unidade;
  if aRet.Codigo > 0 then
    Retorno := IntToStr(aRet.Codigo);
end;

procedure TFrmCad_Servico.Excluir;
var
  mCodigo: integer;
  lRet: OleVariant;
begin
   mCodigo := cdsCODIGO.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    lRet := DM.SMProduto.setServico(DM.BancoDados,cds.Delta, -1);

    cds.Close;
    cds.Data := lRet;
    TMensagem.Informacao('Serviço excluído com sucesso.');
  end;
end;

procedure TFrmCad_Servico.FormCreate(Sender: TObject);
begin
  inherited;
  MontaSql(-1);
end;

procedure TFrmCad_Servico.Gravar;
var
  mRetorno: OleVariant;
begin
  if not Validar then
    Exit;

  inherited;
  if (cds.ChangeCount > 0) then
  begin
    mRetorno := DM.SMProduto.setServico(DM.BancoDados, cds.Delta, cdsCODIGO.AsInteger);
    cds.Close;
    cds.Data := mRetorno;
    TMensagem.Informacao('Serviço cadastrado com sucesso.');
  end;
end;

procedure TFrmCad_Servico.localizar;
begin
  inherited;
  MontaSql(Consulta.Servico);
end;

procedure TFrmCad_Servico.MontaSql(pCodigo: Integer);
begin
  if (pCodigo = 0) then
    Exit;

  cds.Close;
  cds.Data := DM.SMProduto.getServico(DM.BancoDados, pCodigo);
  MakeReadWrite(cdsSIGLA);
end;

function TFrmCad_Servico.Validar: Boolean;
begin
  Result := True;

  if (DBEdit2.Text = EmptyStr) then
  begin
    Result := False;
    TMensagem.Atencao('Informe a descrição.');
    DBEdit2.SetFocus;
    Exit;
  end;

  if (DBEdit3.Text = EmptyStr) then
  begin
    Result := False;
    TMensagem.Atencao('Informe o valor de Custo do Serviço.');
    DBEdit3.SetFocus;
    Exit;
  end;

  if (DBEdit4.Text = EmptyStr) then
  begin
    Result := False;
    TMensagem.Atencao('Informe o valor do Serviço.');
    DBEdit4.SetFocus;
    Exit;
  end;

  if (dbpsqsUnidade.Campo.Text = EmptyStr) then
  begin
    Result := False;
    TMensagem.Atencao('Informe a unidade.');
    dbpsqsUnidade.Campo.SetFocus;
    Exit;
  end;
end;

end.
