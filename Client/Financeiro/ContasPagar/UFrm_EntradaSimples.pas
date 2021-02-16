unit UFrm_EntradaSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad,
  Vcl.Menus, System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  UDBPesquisa, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Math, Vcl.Buttons;

type
  TDBNewNavigator = class(TDBNavigator);
type
  TFrm_EntradaSimples = class(TPdr_Cad)
    pnlUserInclusao: TPanel;
    lblDataInclusao: TLabel;
    lblUsuarioInclusao: TLabel;
    pnlDados: TPanel;
    dbpsqsFornecedor: TDBPesquisa;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    pnlDuplicata: TPanel;
    pnlTitDuplicata: TPanel;
    lbl1: TLabel;
    dbgrdParcela: TDBGrid;
    dsParcela: TClientDataSet;
    sParcela: TDataSource;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    pnlAddDoc: TPanel;
    imglAddDoc: TImage;
    lbllAddDoc: TLabel;
    actGerarDup: TAction;
    pnlExcDup: TPanel;
    imgExcDup: TImage;
    lblExcDup: TLabel;
    actExcDup: TAction;
    dbnvgrParcela: TDBNavigator;
    cdsID: TIntegerField;
    cdsCODFOR: TIntegerField;
    cdsID_CONDPAGTO: TIntegerField;
    cdsID_HISTORICO: TIntegerField;
    cdsID_USUARIO: TIntegerField;
    cdsDESCRICAO: TStringField;
    cdsEMISSAO: TDateField;
    cdsENTRADA: TDateField;
    cdsBASEICMS: TCurrencyField;
    cdsVALORICMS: TCurrencyField;
    cdsTOTPRODUTO: TCurrencyField;
    cdsFRETE: TCurrencyField;
    cdsSEGURO: TCurrencyField;
    cdsOUTRAS: TCurrencyField;
    cdsVALORIPI: TCurrencyField;
    cdsTOTNOTA: TCurrencyField;
    cdsOBS: TMemoField;
    cdsDATA_HORA: TSQLTimeStampField;
    cdsN_NF: TIntegerField;
    cdsCNF: TIntegerField;
    cdsINDPAG: TIntegerField;
    cdsMODELO: TStringField;
    cdsSERIE: TIntegerField;
    cdsDSAIENT: TDateField;
    cdsHSAIENT: TTimeField;
    cdsTPNF: TStringField;
    cdsFINNFE: TIntegerField;
    cdsVBCST: TFMTBCDField;
    cdsVDESC: TFMTBCDField;
    cdsVII: TFMTBCDField;
    cdsVPIS: TFMTBCDField;
    cdsVCOFINS: TFMTBCDField;
    cdsMODFRETE: TStringField;
    cdsINFCPL: TStringField;
    cdsQVOL: TIntegerField;
    cdsESP: TStringField;
    cdsMARCA: TStringField;
    cdsNVOL: TStringField;
    cdsPESOL: TFMTBCDField;
    cdsPESOB: TFMTBCDField;
    cdsUFEMBARQ: TStringField;
    cdsXLOCEMBARQ: TStringField;
    cdsADICINFCPL: TMemoField;
    cdsADICINFADFISCO: TMemoField;
    cdsVST: TFMTBCDField;
    cdsCOMPRA_XNCOMPRA: TStringField;
    cdsCOMPRA_XPED: TStringField;
    cdsCOMPRA_XCONT: TStringField;
    cdsISSQN_VSERV: TFMTBCDField;
    cdsISSQN_VBC: TFMTBCDField;
    cdsISSQN_VISS: TFMTBCDField;
    cdsISSQN_VPIS: TFMTBCDField;
    cdsISSQN_VCOFINS: TFMTBCDField;
    cdsIMPORTADA: TStringField;
    cdsCHAVE: TStringField;
    cdsTIPO_NOTA: TStringField;
    cdsTIPO: TStringField;
    cdsDT_ENTREGA: TDateField;
    cdsNAT_OPERACAO: TStringField;
    cdsTOT_IPI: TFMTBCDField;
    cdsTR_PLACA: TStringField;
    cdsTR_PLACAUF: TStringField;
    cdsTR_RAZAO: TStringField;
    cdsTR_CPFCNPJ: TStringField;
    cdsTR_INSC: TStringField;
    cdsTR_CEP: TStringField;
    cdsTR_ENDERECO: TStringField;
    cdsLOG: TMemoField;
    cdsTR_ANTT: TStringField;
    cdsFORNECEDOR: TStringField;
    cdsfdqryEntrada_Pagar: TDataSetField;
    cdsfdqryEntrada_Item: TDataSetField;
    dsParcelaID_NOTAENTRADA: TIntegerField;
    dsParcelaNFAT: TIntegerField;
    dsParcelaVDESC: TBCDField;
    dsParcelaVJUROS: TBCDField;
    dsParcelaVDUP: TBCDField;
    dsParcelaNDUP: TIntegerField;
    dsParcelaDVENC: TDateField;
    dsParcelaINDPAG: TStringField;
    dsParcelaTPAG: TStringField;
    dsParcelaBAIXA_DATA: TDateField;
    dsParcelaBAIXA_VALOR: TBCDField;
    dsParcelaBAIXA_USUARIO: TStringField;
    dsParcelaID_HISTORICO: TIntegerField;
    dsParcelaID_CONTA: TStringField;
    dsParcelaID_CAIXA: TIntegerField;
    dsParcelaCHEQUE_NUMERO: TIntegerField;
    dsParcelaID_PAGTO: TIntegerField;
    dsParcelaFORMA: TStringField;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure dbpsqsFornecedorPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsHistoricoPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsCondPagtoPesquisa(Sender: TObject; var Retorno: string);
    procedure dsParcelaBeforeDelete(DataSet: TDataSet);
    procedure DBEdit3Exit(Sender: TObject);
    procedure cdsAfterEdit(DataSet: TDataSet);
    procedure cdsAfterCancel(DataSet: TDataSet);
    procedure actGerarDupExecute(Sender: TObject);
    procedure actExcDupExecute(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure dbnvgrParcelaClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure dsParcelaBeforeInsert(DataSet: TDataSet);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
  private
    function SomarParcelas: Currency;
    function Validar() : Boolean;
    function ExisteDoc(CodFor: Integer; Doc: integer):Boolean;

    procedure LancarDuplicata(pCondPagto: string; pValor: Extended);
    function SomenteLeitura():Boolean;
  public
    gInsertUpdate : string;

    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
    procedure Cancelar(); override;
    procedure Editar(); override;

    procedure Iniciar();
    procedure AlteraDBNavigator();
    procedure MontaSql(pCodigo: Integer);
  end;

var
  Frm_EntradaSimples: TFrm_EntradaSimples;

implementation

uses
  UDM, UConsulta, UFuncoes, u_Mensagem;

{$R *.dfm}

{ TFrm_EntradaSimples }

procedure TFrm_EntradaSimples.actExcDupExecute(Sender: TObject);
begin
  inherited;
  if dsParcela.IsEmpty then
  begin
    TMensagem.Atencao('Duplicata não encontrada.');
    Exit;
  end;

  if not dbgrdParcela.Columns.Grid.Focused then
  begin
    TMensagem.Atencao('Necessário selecionar duplicata a excluir.');
    Exit ;
  end;

  if (not dsParcela.FieldByName('baixa_data').IsNull) then
  begin
    TMensagem.Atencao('Duplicata com baixa.');
    Exit;
  end;

  if TMensagem.Pergunta('Confirma a exclusão da duplicata selecionada?') then
    dsParcela.Delete ;
end;

procedure TFrm_EntradaSimples.actGerarDupExecute(Sender: TObject);
begin
  inherited;
  if (not dsParcela.IsEmpty) then
  begin
    TMensagem.Informacao('Já existe duplicatas. Necessário limpa-las.');
    Exit;
  end;

//  if ((DBEdit3.Text <> '') and (dbpsqsCondPagto.Campo.Text <> '')) then
//    LancarDuplicata(dbpsqsCondPagto.Campo.Text, cds.FieldByName('totnota').AsCurrency)
//  else
//    TMensagem.Atencao('Campo de Cond. Pagto/Valor não informado.');
end;

procedure TFrm_EntradaSimples.AlteraDBNavigator;
var
  B: TNavigateBtn;
begin
  for B := Low(TNavigateBtn) to High(TNavigateBtn) do
    with TDBNewNavigator(dbnvgrParcela).Buttons[B] do
    begin
      case Index of
        nbFirst:
          Caption := 'Inicio';
        nbPrior:
          Caption := 'Anterior';
        nbNext:
          Caption := 'Próximo';
        nbLast:
          Caption := 'Último';
        nbInsert:
          Caption := 'Incluir';
        nbDelete:
          Caption := 'Excluir';
        nbEdit:
          Caption := 'Editar';
        nbPost:
          Caption := 'Salvar';
        nbCancel:
          Caption := 'Cancelar';
        nbRefresh:
          Caption := 'Atualizar';
      end;
      Layout := blGlyphTop; { uses Buttons}
      Hint := Caption;
      ShowHint := True;
    end;
end;

procedure TFrm_EntradaSimples.Cancelar;
begin
  inherited;
  if cds.State = dsInsert then
  begin
    lblDataInclusao.Caption := '';
    lblUsuarioInclusao.Caption := '';
  end;
  dsParcela.CancelUpdates ;
end;

procedure TFrm_EntradaSimples.cdsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  dsParcela.Cancel ;
end;

procedure TFrm_EntradaSimples.cdsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  dsParcela.Edit ;
end;

procedure TFrm_EntradaSimples.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsID.AsInteger := 0;
  cdsEMISSAO.AsDateTime := Date;
  cdsENTRADA.AsDateTime := Date;
  cdsID_USUARIO.AsInteger := DM.UserID;
end;

procedure TFrm_EntradaSimples.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8, #13]) then
    Key := #0; //apenas numero
end;

procedure TFrm_EntradaSimples.DBEdit3Exit(Sender: TObject);
begin
  inherited;
//  pnlDuplicata.Enabled := StrToFloatDef(DBEdit3.Text,0) > 0;
end;

procedure TFrm_EntradaSimples.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_EntradaSimples.dbnvgrParcelaClick(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  case Button of//      nbFirst    :  ShowMessage(´Primeiro Registro´);
//      nbPrior    :  ShowMessage(´Registro Anterior´);
//      nbNext     :  ShowMessage(´Registro Posterior´);
//      nbLast     :  ShowMessage(´Último   Registro´);
    nbInsert:
      begin
        if (SomarParcelas >= StrToCurrDef(DBEdit3.Text, 0)) then
        begin
          TMensagem.Atencao('Valor do documento já é menor/igual ao total das parcelas.');
          Exit
        end;
        dsParcela.Append;
        dbgrdParcela.SetFocus;
      end;
//      nbDelete   :  ShowMessage(´Deletando´);
//      nbEdit     :  ShowMessage(´Editando´);
    nbPost:
      begin
        if (SomarParcelas > StrToCurr(DBEdit3.Text)) then
        begin
          TMensagem.Atencao('Valor do documento é menor que ao total das parcelas.');
          dsParcela.CancelUpdates;
          Exit
        end;

      end;
//      nbCancel   :  ShowMessage(´Cancelando´);
//      nbRefresh  :  ShowMessage(´Atualizando´);
  end;
end;

procedure TFrm_EntradaSimples.DBPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico.ToString;
end;

procedure TFrm_EntradaSimples.dbpsqsCondPagtoPesquisa(Sender: TObject; var Retorno: string);
begin
  inherited;
  Retorno := Consulta.CondPagto.ToString;
end;

procedure TFrm_EntradaSimples.dbpsqsFornecedorPesquisa(Sender: TObject; var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Fornecedor.ToString;
end;

procedure TFrm_EntradaSimples.dbpsqsHistoricoPesquisa(Sender: TObject; var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico.ToString;
end;

procedure TFrm_EntradaSimples.dsParcelaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cds.State in [dsEdit, dsInsert]) then
    cds.Edit;
end;

procedure TFrm_EntradaSimples.dsParcelaBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not (cds.State in [dsEdit, dsInsert]) then
    cds.Edit;
end;

procedure TFrm_EntradaSimples.Editar;
begin
  inherited;

end;

procedure TFrm_EntradaSimples.Excluir;
begin
  try
    inherited;
    if cds.ChangeCount > 0 then
    begin
      DM.SMNotaClient.setNotaEntrada(DM.BancoDados, cds.FieldByName('ID').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := DM.SMNotaClient.getNotaEntrada(DM.BancoDados, -1);
    end;
    TMensagem.Informacao('Exclusão efetuada com sucesso.');
  except
    TMensagem.Erro('', 'Exclusão não efetuada.');
  end;
end;

function TFrm_EntradaSimples.ExisteDoc(CodFor, Doc: integer): Boolean;
const
  SQL = 'select a.ID from NOTA_ENTRADA a '+
        'where a.N_NF = %s and a.CODFOR = %s';
begin
  Result := False;

  if (Doc > 0) then
  begin
    DM.dsConsulta.Close;
    DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[Doc.ToString,CodFor.ToString]));

    if not DM.dsConsulta.IsEmpty then
    begin
      Result := True;
      TMensagem.Atencao('Nota já cadastrada.');
    end;
  end;

end;

procedure TFrm_EntradaSimples.FormShow(Sender: TObject);
begin
  inherited;
  pnlLocalizar.Visible := False;

  if (gInsertUpdate = 'insert') then
    actNovo.Execute;

  if (gInsertUpdate = 'update') then
    if SomenteLeitura then
    begin
      lblTitulo.Caption := '         Documento apenas leitura';
      pnlFundo1.Enabled := False;

      pnlAdicionar.Color := $00FFB87D;
      pnlAdicionar.Enabled := False;
      pnlEditar.Color := $00FFB87D;
      pnlEditar.Enabled := False;
      pnlExcluir.Color := $00FFB87D;
      pnlExcluir.Enabled := False;
      pnlCancelar.Color := $00FFB87D;
      pnlCancelar.Enabled := False;
      pnlGravar.Color := $00FFB87D;
      pnlGravar.Enabled := False;
    end
    else
      actEditar.Execute;
end;

procedure TFrm_EntradaSimples.Gravar;
var
  mRetorno: OleVariant;
begin
  if not Validar then
    Exit ;

  {limpa cond pagto}
  if ((dsParcela.IsEmpty) and (cds.FieldByName('id_condpagto').AsInteger > 0)) then
    if not (cds.State in [dsEdit, dsInsert]) then
    begin
      cds.Edit;
      cds.FieldByName('id_condpagto').Clear;
//      dbpsqsCondPagto.Mostrar.Clear;
    end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMNotaClient.setNotaEntrada(DM.BancoDados, cdsID.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
    if gInsertUpdate = 'insert' then
      gInsertUpdate := 'update';
  end;
end;

procedure TFrm_EntradaSimples.Iniciar;
begin
  lblDataInclusao.Caption := '';
  lblUsuarioInclusao.Caption := '';
//  pnlDuplicata.Enabled := False;
end;

procedure TFrm_EntradaSimples.LancarDuplicata(pCondPagto: string; pValor: Extended);
var
  lContador, x: Integer;
  lParcela, lCentavo: Currency;
begin
  if (StrToIntDef(pCondPagto, 0) > 0) then
  begin
    DM.dsConsulta.Close;
    DM.dsConsulta.Data := DM.LerDataSet('select * from CONDPAGTO ' + 'where codigo = ''' + pCondPagto + '''');
    lContador := 0;
    for x := 1 to 15 do
    begin
      if DM.dsConsulta.FieldByName('cond' + IntToStr(x)).AsInteger > 0 then
        Inc(lContador);
    end;

    lParcela := Arredondar(pValor / lContador, 2);
    lCentavo := pValor - (lParcela * lContador);
    for x := 1 to 15 do
    begin
      if DM.dsConsulta.FieldByName('cond' + IntToStr(x)).AsInteger > 0 then
      begin
        dsParcela.Append;
        dsParcela.FieldByName('ID_NOTAENTRADA').AsInteger := cds.FieldByName('id').AsInteger;
        dsParcela.FieldByName('ndup').AsInteger := x;
        dsParcela.FieldByName('dvenc').AsDateTime := cds.FieldByName('emissao').AsDateTime + DM.dsConsulta.FieldByName('cond' + IntToStr(x)).AsInteger;
        dsParcela.FieldByName('vdup').AsFloat := lParcela + lCentavo;
        dsParcela.Post;
        lCentavo := 0;
      end;
    end;
    DM.dsConsulta.Close;
  end;
end;

procedure TFrm_EntradaSimples.localizar;
begin
  inherited;
//  MontaSql(Consulta.NotaEntrada);
end;

procedure TFrm_EntradaSimples.MontaSql(pCodigo: Integer);
const
  SQL = 'select nome from FUNCIONARIO where codigo = %s';
begin
  cds.Close ;
  cds.Data := DM.SMNotaClient.getNotaEntrada(DM.BancoDados, pCodigo);

  if not cds.IsEmpty then
  begin
    lblTitulo.Caption := '         Alteração de documento';
    lblDataInclusao.Caption := 'Data da inclusão: ' + FormatDateTime('dd/mm/yyyy', cds.FieldByName('entrada').AsDateTime);
    lblUsuarioInclusao.Caption := 'Usuário: ' + DM.GetString(Format(SQL,[cds.FieldByName('id_usuario').AsString]),'nome');
  end;
end;

procedure TFrm_EntradaSimples.Novo;
begin
//  inherited;
  lblDataInclusao.Caption := 'Data da inclusão: ' + FormatDateTime('dd/mm/yyyy', Date);
  lblUsuarioInclusao.Caption := 'Usuário: ' + DM.User;

  cds.Close;
  cds.Data := DM.SMNotaClient.getNotaEntrada(DM.BancoDados, -1);
  cds.append;
  dbpsqsFornecedor.Campo.SetFocus;
end;

function TFrm_EntradaSimples.SomarParcelas: Currency;
var
  lTotal: Currency;
begin
  Result := 0;
  lTotal := 0;
  if dsParcela.IsEmpty then
    Exit;

  dsParcela.First;
  while not dsParcela.Eof do
  begin
    lTotal := lTotal + dsParcela.FieldByName('vdup').AsCurrency;
    dsParcela.Next;
  end;
  Result := lTotal;
end;

function TFrm_EntradaSimples.SomenteLeitura: Boolean;
begin
  Result := False;

  if dsParcela.IsEmpty then
    Exit ;

  dsParcela.First;
  while not dsParcela.Eof do
  begin
    if (not dsParcela.FieldByName('baixa_data').IsNull) then
    begin
      Result := True;
      Break;
    end;
    dsParcela.Next;
  end;
end;

function TFrm_EntradaSimples.Validar: Boolean;
var
  lTotParcela: Currency;
begin
  Result := True ;
  if dbpsqsFornecedor.Campo.Text = '' then
  begin
    Result := False;
    TMensagem.Atencao('Campo fornecedor não informado.');
    dbpsqsFornecedor.Campo.SetFocus;
    Exit ;
  end;

  if DBEdit3.Text = '' then
  begin
    Result := False;
    TMensagem.Atencao('Campo valor não informado.');
    DBEdit3.SetFocus;
    Exit ;
  end;

  if dsParcela.IsEmpty then
  begin
    Result := False;
    TMensagem.Atencao('Necessário ter no mínimo uma duplicata vinculada ao Documento.');
    DBEdit3.SetFocus;
    Exit ;
  end;

  {Validar se ja existe Documento}
  if (gInsertUpdate = 'insert')  then
    if ExisteDoc(cds.FieldByName('codfor').AsInteger, cds.FieldByName('N_NF').AsInteger) then
      Result := False;

  lTotParcela := SomarParcelas;
  if (lTotParcela > StrToFloatDef(DBEdit3.Text, 0)) then
  begin
    Result := False;
    TMensagem.Atencao('Valor do documento é menor ao total das parcelas.');
    Exit
  end;

  if (lTotParcela < StrToFloatDef(DBEdit3.Text, 0)) then
  begin
    Result := False;
    TMensagem.Atencao('Total da(s) parcela(s) é menor que o valor do documento.');
    Exit
  end;

end;

end.

