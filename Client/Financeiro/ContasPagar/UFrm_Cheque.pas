unit UFrm_Cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_CadLista, Data.DB, System.Actions,
  Vcl.ActnList, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, UDBPesquisa, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, UEDPesquisa, System.Math,U_DataCorrida;

type
  TFrm_Cheque = class(TPdr_CadLista)
    dbgrd2: TDBGrid;
    dsListaDetail: TClientDataSet;
    sListaDetail: TDataSource;
    pnlFundoCadastro: TPanel;
    dbpsqsConta: TDBPesquisa;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    dbmmo: TDBMemo;
    dsPrincipalID_BANCO: TStringField;
    dsPrincipalNUM_CHEQUE: TIntegerField;
    dsPrincipalDT_EMISSAO: TDateField;
    dsPrincipalDT_COMPENSA: TDateField;
    dsPrincipalVALOR: TFMTBCDField;
    dsPrincipalNOMINAL: TStringField;
    dsPrincipalOBS: TMemoField;
    dsPrincipalBCO_NOME: TStringField;
    Label7: TLabel;
    edpsqsListaConta: TEdPesquisa;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    pnlLocaliza: TPanel;
    btnCancelar: TSpeedButton;
    imgLocaliza: TImage;
    actBuscar: TAction;
    dsListaNUM_CHEQUE: TIntegerField;
    dsListaDT_EMISSAO: TDateField;
    dsListaDT_COMPENSA: TDateField;
    dsListaVALOR: TFMTBCDField;
    dsListaNOMINAL: TStringField;
    lbl2: TLabel;
    Label8: TLabel;
    dsListaDetailDOC: TIntegerField;
    dsListaDetailPARCELA: TIntegerField;
    dsListaDetailVENCTO: TDateField;
    dsListaDetailVALOR: TFMTBCDField;
    dsListaDetailFORNECEDOR: TStringField;
    lblLeitura: TLabel;
    procedure dbpsqsContaPesquisa(Sender: TObject; var Retorno: string);
    procedure dsPrincipalAfterInsert(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure actBuscarExecute(Sender: TObject);
    procedure dsListaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edpsqsListaContaPesquisa(Sender: TObject; var Retorno: string);
    procedure actExcluirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
  private
    procedure MontaSql(pBanco: string;pCheque : integer);
    function Validar(): Boolean;
  public
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
  end;

var
  Frm_Cheque: TFrm_Cheque;

implementation

uses
  UDM, u_Mensagem, UConsulta, UFuncoes;

{$R *.dfm}

{ TFrm_Cheque }

procedure TFrm_Cheque.actBuscarExecute(Sender: TObject);
const
  SQLCheque = 'SELECT a.BCO_NOME, r.NUM_CHEQUE, r.DT_EMISSAO,'+
              'r.DT_COMPENSA, r.VALOR, r.NOMINAL '+
              'FROM CHEQUE r '+
              'left outer join CONTA_BANCARIA a on (a.ID = r.ID_BANCO) '+
              'where r.ID_BANCO = %s '+
              'and r.DT_EMISSAO between %s and %s';
begin
  inherited;
  if edpsqsListaConta.Campo.Text = '' then
  begin
    TMensagem.Atencao('Informe a conta.');
    Exit;
  end;

  dsLista.Close;
  dsLista.Data := DM.LerDataSet(Format(SQLCheque,[QuotedStr(edpsqsListaConta.Campo.Text),
                                                  QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date)),
                                                  QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date))]));
end;

procedure TFrm_Cheque.actExcluirExecute(Sender: TObject);
const
  SQLVinculo = 'SELECT r.ID_NOTAENTRADA||'' Duplicata: ''||lpad(r.NDUP,3,''0'') doc '+
               'FROM NOTA_ENTRADA_PAGAR r '+
               'where r.id_conta = %s and r.cheque_numero = %s';
begin
  if (not dsPrincipal.IsEmpty) then
   {Valida se cheque ja esta vinculado a alguma duplicata}
   DM.dsConsulta.Close;
   DM.dsConsulta.Data := DM.LerDataSet(Format(SQLVinculo, [QuotedStr(dsPrincipal.FieldByName('ID_BANCO').AsString), dsPrincipal.FieldByName('NUM_CHEQUE').AsString]));
   if not DM.dsConsulta.IsEmpty then
   begin
     TMensagem.Informacao('Cheque não pode ser excluído.' + #13 + #10 + 'Vínculado ao Documento: ' + DM.dsConsulta.FieldByName('doc').AsString);
     Exit;
   end;

  inherited;

end;

procedure TFrm_Cheque.actNovoExecute(Sender: TObject);
begin
  pnlFundoCadastro.Enabled := True;
  pnlEditar.Enabled := True;
  pnlExcluir.Enabled := True;
  pnlGravar.Enabled := True;
  pnlCancelar.Enabled := True;

  pnlEditar.Color := $006B2F00;
  pnlExcluir.Color := $006B2F00;
  pnlGravar.Color := $006B2F00;
  pnlCancelar.Color := $006B2F00;

  lblLeitura.Visible := False;

  inherited;

end;

procedure TFrm_Cheque.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8, #13]) then
    Key := #0; //apenas numero
end;

procedure TFrm_Cheque.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', '/', #8, #13]) then
    Key := #0; //apenas numero e barra
end;

procedure TFrm_Cheque.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_Cheque.dbpsqsContaPesquisa(Sender: TObject; var Retorno: string);
begin
  inherited;
  Retorno := Consulta.ContaBancaria;
end;

procedure TFrm_Cheque.dsListaAfterScroll(DataSet: TDataSet);
const
  SQLDuplicata = 'select a.ID_NOTAENTRADA doc,'+
                 'a.NDUP parcela,a.DVENC vencto,a.baixa_valor valor,'+
                 'c.razao_nome fornecedor '+
                 'from NOTA_ENTRADA b '+
                 'left outer join NOTA_ENTRADA_PAGAR a on (a.ID_NOTAENTRADA = b.ID) '+
                 'left outer join FABRICANTE c on (c.CODIGO = b.CODFOR) '+
                 'where a.ID_CONTA = %s '+
                 'and a.CHEQUE_NUMERO = %s';
begin
  inherited;

  dsListaDetail.Close ;
  dsListaDetail.Data := DM.LerDataSet(Format(SQLDuplicata,[
                                             QuotedStr(edpsqsListaConta.Campo.Text),
                                             dsLista.FieldByName('num_cheque').AsString]));
end;

procedure TFrm_Cheque.dsPrincipalAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dsPrincipal.FieldByName('dt_emissao').AsDateTime := Date;
end;

procedure TFrm_Cheque.edpsqsListaContaPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.ContaBancaria;
end;

procedure TFrm_Cheque.Excluir;
var
  lIdBanco: string;
  lNumCheque : Integer;
begin
  lIdBanco := dsPrincipal.FieldByName('id_banco').AsString;
  lNumCheque := dsPrincipal.FieldByName('num_cheque').AsInteger;
  inherited;
  if dsPrincipal.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setCheque(dm.BancoDados,lIdBanco,lNumCheque,dsPrincipal.Delta);

    dsPrincipal.Close;
    dsPrincipal.CreateDataSet;
  end;
end;

procedure TFrm_Cheque.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := Date;
  dtp2.Date := Date;
end;

procedure TFrm_Cheque.Gravar;
var
  lRetorno: OleVariant;
begin
  {validar}
  if not Validar then
    Exit;

  inherited;
  if dsPrincipal.ChangeCount > 0 then
  begin
    lRetorno := DM.SMCadastroClient.setCheque(DM.BancoDados,
                                              dsPrincipal.FieldByName('id_banco').AsString,
                                              dsPrincipal.FieldByName('num_cheque').AsInteger,
                                                 dsPrincipal.Delta);
    dsPrincipal.Close;
    dsPrincipal.Data := lRetorno;
  end;
end;

procedure TFrm_Cheque.localizar;
var
  lRetCheque: TCheque;
begin
  inherited;
  lRetCheque := Consulta.Cheque;
  if ((lRetCheque.ID_Banco <> '') and (lRetCheque.NCheque > 0)) then
  begin
    MontaSql(lRetCheque.ID_Banco, lRetCheque.NCheque);
  end;
end;

procedure TFrm_Cheque.MontaSql(pBanco: string; pCheque: integer);
const
  SQLVinculo = 'SELECT r.ID_NOTAENTRADA||'' | ''||'' Duplicata: ''||lpad(r.NDUP,3,''0'') doc '+
               'FROM NOTA_ENTRADA_PAGAR r '+
               'where r.id_conta = %s and r.cheque_numero = %s';
begin
  lblLeitura.Visible := False;
  if ((pCheque < 1) or (pBanco = '')) then
    Exit;

  dsPrincipal.Close;
  dsPrincipal.Data := DM.SMCadastroClient.getCheque(DM.BancoDados,pBanco,pCheque);

   {Valida se cheque ja esta vinculado a alguma duplicata}
  if (not dsPrincipal.IsEmpty) then
  begin
    DM.dsConsulta.Close;
    DM.dsConsulta.Data := DM.LerDataSet(Format(SQLVinculo, [
                                               QuotedStr(dsPrincipal.FieldByName('ID_BANCO').AsString),
                                               dsPrincipal.FieldByName('NUM_CHEQUE').AsString]));

    pnlFundoCadastro.Enabled := DM.dsConsulta.IsEmpty;
    pnlEditar.Enabled := DM.dsConsulta.IsEmpty;
    pnlExcluir.Enabled := DM.dsConsulta.IsEmpty;
    pnlGravar.Enabled := DM.dsConsulta.IsEmpty;
    pnlCancelar.Enabled := DM.dsConsulta.IsEmpty;

    pnlEditar.Color := IfThen(DM.dsConsulta.IsEmpty, $006B2F00, $00FFB87D);
    pnlExcluir.Color := IfThen(DM.dsConsulta.IsEmpty, $006B2F00, $00FFB87D);
    pnlGravar.Color := IfThen(DM.dsConsulta.IsEmpty, $006B2F00, $00FFB87D);
    pnlCancelar.Color := IfThen(DM.dsConsulta.IsEmpty, $006B2F00, $00FFB87D);

    if (not DM.dsConsulta.IsEmpty) then
      lblLeitura.Caption := 'Apenas leitura - Vinculo:  Doc. ' + DM.dsConsulta.FieldByName('doc').AsString;

    lblLeitura.Visible := not DM.dsConsulta.IsEmpty;
//    if not DM.dsConsulta.IsEmpty then
//    begin
//      pnlEditar.Color := $00FFB87D;
//    end
//    else
//    begin
//
//    end;
  end;
end;

procedure TFrm_Cheque.Novo;
begin
  inherited;
  dbpsqsConta.Campo.SetFocus;
end;

function TFrm_Cheque.Validar: Boolean;
begin
  Result := True;

  if ((dbpsqsConta.Campo.Text = '') or (dbpsqsConta.Campo.Text = '0')) then
  begin
    Result := False;
    TMensagem.Atencao('Informe a conta.');
    dbpsqsConta.Campo.SetFocus;
    Exit;
  end;

  if not ValidaData(DBEdit2.Text, True) then
  begin
    Result := False;
    DBEdit2.SetFocus;
    Exit;
  end;

  if (DBEdit1.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o nº do cheque.');
    DBEdit1.SetFocus;
    Exit;
  end;

  if (DBEdit4.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o valor do cheque.');
    DBEdit4.SetFocus;
    Exit;
  end;

  if (DBEdit5.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe a quem será pago o cheque.');
    DBEdit5.SetFocus;
    Exit;
  end;
end;

end.
