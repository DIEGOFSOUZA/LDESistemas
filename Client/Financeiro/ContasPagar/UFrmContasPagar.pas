unit UFrmContasPagar; //ajustar relatorio

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.Math, System.Actions, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ActnList, UPdr_Child, UEDPesquisa, Data.DB, Datasnap.DBClient,
  pcnConversaoNfe, pcnConversao, Vcl.Imaging.pngimage, Vcl.Grids,U_DataCorrida,
  Vcl.Menus;

type
  TFrm_ContasPagar = class(TPdr_Child)
    lblTitulo: TLabel;
    pnlFundo: TPanel;
    pnlPesquisa: TPanel;
    pnlOperacoes: TPanel;
    pnlFundo2: TPanel;
    pnlRodape: TPanel;
    pnlRegistros: TPanel;
    pnl0: TPanel;
    pnlXML: TPanel;
    pnlRelatorio: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    actlstMain: TActionList;
    actPesquisar: TAction;
    actImportar: TAction;
    actExcluir: TAction;
    actBaixar: TAction;
    actRel1: TAction;
    dsPagar: TClientDataSet;
    OpenDialog1: TOpenDialog;
    imgFechar: TImage;
    pnlBaixaDup: TPanel;
    imgBaixaDup: TImage;
    lblBaixaDup: TLabel;
    pnlExDup: TPanel;
    imgExDup: TImage;
    lblExDup: TLabel;
    pnlAddDoc: TPanel;
    imglAddDoc: TImage;
    lbllAddDoc: TLabel;
    pnlRel1: TPanel;
    imgRel1: TImage;
    lblRel1: TLabel;
    pnlImpXML: TPanel;
    imgImpXML: TImage;
    lblImpXML: TLabel;
    pnlConsDup: TPanel;
    imgConsDup: TImage;
    lblConsDup: TLabel;
    actIncluirSimples: TAction;
    sPagar: TDataSource;
    dbgrdParcela: TDBGrid;
    pnlPeriodo: TPanel;
    chkPeriodo: TCheckBox;
    dtp2: TDateTimePicker;
    dtp1: TDateTimePicker;
    lblPeriodo: TLabel;
    pnlFornecedor: TPanel;
    lblFornecedor: TLabel;
    chkFornecedor: TCheckBox;
    edpFornecedor: TEdPesquisa;
    pnlNF: TPanel;
    lblNF: TLabel;
    chkNF: TCheckBox;
    lblnNF: TLabel;
    edtNF: TEdit;
    cbbPeriodo: TComboBox;
    pnlTipo: TPanel;
    lblTipo: TLabel;
    rgTipo: TRadioGroup;
    actRestaurarBaixa: TAction;
    pm1: TPopupMenu;
    RestaurarDuplicata1: TMenuItem;
    actVisualizarDup: TAction;
    dsPagarN_NF: TIntegerField;
    dsPagarEMISSAO: TDateField;
    dsPagarNDUP: TIntegerField;
    dsPagarFORNECEDOR: TStringField;
    dsPagarDVENC: TDateField;
    dsPagarVDUP: TFMTBCDField;
    dsPagarBAIXADA: TStringField;
    dsPagarID_NOTA: TIntegerField;
    dsPagarTABELA: TStringField;
    procedure actImportarExecute(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure actIncluirSimplesExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure dbgrdParcelaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edpFornecedorPesquisa(Sender: TObject; var Retorno: string);
    procedure chkPeriodoClick(Sender: TObject);
    procedure chkFornecedorClick(Sender: TObject);
    procedure chkNFClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actBaixarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actRel1Execute(Sender: TObject);
    procedure dbgrdParcelaTitleClick(Column: TColumn);
    procedure actRestaurarBaixaExecute(Sender: TObject);
    procedure actVisualizarDupExecute(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    sFiltro:string;
  end;

var
  Frm_ContasPagar: TFrm_ContasPagar;

implementation

uses
  UDM, UDMACBr, pcnNFe, UFuncoes, UFrm_NotaEntrada, UFrm_EntradaSimples,
  UConsulta, u_Mensagem, UFrmBaixaContaPagar, URel_ContasAPagar;

{$R *.dfm}

procedure TFrm_ContasPagar.actBaixarExecute(Sender: TObject);
var
  lBaixa: TFrmBaixaContaPagar;
begin
  inherited;
  if dsPagar.IsEmpty then
  begin
    TMensagem.Informacao('Nenhuma duplicata encontrada.');
    Exit;
  end;

  if not dbgrdParcela.Columns.Grid.Focused then
  begin
    TMensagem.Informacao('Necessário selecionar duplicata a baixar.');
    Exit;
  end;

  if (dsPagar.FieldByName('BAIXADA').AsString = 'SIM') then
  begin
    TMensagem.Informacao('Duplicata já foi paga.');
    Exit;
  end;

  if not Assigned(FrmBaixaContaPagar) then
    FrmBaixaContaPagar := TFrmBaixaContaPagar.Create(Self);
  try
    FrmBaixaContaPagar.CarregarDupl(dsPagar.FieldByName('ID_NOTA').AsInteger,
                                    dsPagar.FieldByName('NDUP').AsInteger,False,
                                    dsPagar.FieldByName('TABELA').AsString);
    FrmBaixaContaPagar.ShowModal;
    if FrmBaixaContaPagar.Retorno = 'sucesso' then
      actPesquisar.Execute;

  finally
    FreeAndNil(FrmBaixaContaPagar);
  end;
end;

procedure TFrm_ContasPagar.actExcluirExecute(Sender: TObject);
var
  lSQL: string;
begin
  inherited;
  if dsPagar.IsEmpty then
  begin
    TMensagem.Informacao('Não há duplicata a ser exclusa.');
    Exit;
  end;

  if not dbgrdParcela.Columns.Grid.Focused then
  begin
    TMensagem.Informacao('Necessário selecionar duplicata a baixar.');
    Exit ;
  end;

  if not dsPagar.FieldByName('baixa_data').IsNull then
  begin
    TMensagem.Informacao('Duplicata com baixa. Exclusão não pode ser efetuada.');
    Exit;
  end;

  if TMensagem.Pergunta('Confirma a exclusão da duplicata?') then
  begin
    lSQL := 'delete from NOTA_ENTRADA_PAGAR a ' +
            'where a.ID_NOTAENTRADA = ' + dsPagar.FieldByName('id_nota').AsString +
            ' and a.ndup = ' + dsPagar.FieldByName('ndup').AsString;

    try
      DM.ExecutarSQL(DM.BancoDados, lSQL);
      TMensagem.Informacao('Duplicata excluída com sucesso');
      actPesquisar.Execute;
    except
      on e: Exception do
        TMensagem.Erro('Erro: ' + e.Message);
    end;
  end;
end;

procedure TFrm_ContasPagar.actImportarExecute(Sender: TObject);
begin
  inherited;
  //

end;

procedure TFrm_ContasPagar.actIncluirSimplesExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(Frm_EntradaSimples) then
    Frm_EntradaSimples := TFrm_EntradaSimples.Create(Self);
  try
    Frm_EntradaSimples.AlteraDBNavigator;
    Frm_EntradaSimples.Iniciar();
    Frm_EntradaSimples.gInsertUpdate := 'insert';

    Frm_EntradaSimples.ShowModal;

    actPesquisar.Execute;
  finally
    FreeAndNil(Frm_EntradaSimples);
  end;
end;

procedure TFrm_ContasPagar.actPesquisarExecute(Sender: TObject);
var
  lSql: string;
  lWhere: string;
begin
  inherited;
  lWhere := ' where ';
//  lSql := 'select a.ID ID_NOTA, a.EMISSAO,a.N_NF,' +
//          'b.RAZAO_NOME fornecedor,' +
//          'c.NDUP,c.DVENC,c.VDUP,c.BAIXA_DATA,c.BAIXA_VALOR,'+
//          'c.BAIXA_USUARIO,c.ID_HISTORICO ID_HISTORICODUP,'+
//          'c.ID_CONTA,c.ID_CAIXA,'+
//          'iif(c.BAIXA_DATA is null,''N'',''S'')baixada,' +
//          'c.VDESC,c.VJUROS,c.CHEQUE_NUMERO,d.dt_compensa '+
//          'from NOTA_ENTRADA a ' +
//          'left outer join FABRICANTE b on (b.CODIGO = a.CODFOR) ' +
//          'left outer join NOTA_ENTRADA_PAGAR c on (c.ID_NOTAENTRADA = a.ID) '+
//          'left outer join CHEQUE d on (d.id_banco = c.id_conta and d.num_cheque = c.cheque_numero)';

  lSql := 'select cast(''N'' as char(1)) tabela, cast(iif(C.BAIXA_DATA is null, ''NÃO'', ''SIM'') as char(3)) BAIXADA, A.N_NF, A.EMISSAO, C.NDUP,'+
          '       B.RAZAO_NOME FORNECEDOR, C.DVENC, C.VDUP, C.ID_NOTAENTRADA ID_NOTA '+
          'from NOTA_ENTRADA_PAGAR C '+
          'left join NOTA_ENTRADA A on (C.ID_NOTAENTRADA = A.ID) '+
          'left join FABRICANTE B on (B.CODIGO = A.CODFOR) '+
          'left join CHEQUE D on (D.ID_BANCO = C.ID_CONTA and '+
          '      D.NUM_CHEQUE = C.CHEQUE_NUMERO)';
  if chkPeriodo.Checked then
  begin
    case cbbPeriodo.ItemIndex of
      0:
        begin
          lSql := lSql + lWhere + 'c.dvenc between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));

          lWhere := ' and ';
          sFiltro := 'Vencimento: ' + FormatDateTime('dd.mm.yyyy', dtp1.Date) + ' a ' + FormatDateTime('dd.mm.yyyy', dtp2.Date);
        end;
      1:
        begin
          lSql := lSql + lWhere + 'a.emissao between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));

          lWhere := ' and ';
          sFiltro := 'Emissao: ' + FormatDateTime('dd.mm.yyyy', dtp1.Date) + ' a ' + FormatDateTime('dd.mm.yyyy', dtp2.Date);
        end;
      2:
        begin
          lSql := lSql + lWhere + 'c.baixa_data between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));

          lWhere := ' and ';
          sFiltro := 'Baixada(s) em: ' + FormatDateTime('dd.mm.yyyy', dtp1.Date) + ' a ' + FormatDateTime('dd.mm.yyyy', dtp2.Date);
        end;
    end;
  end;



  if ((chkFornecedor.Checked) and (edpFornecedor.Campo.Text <> '')) then
  begin
    lSql := lSql +
             lWhere + ' a.codfor = '+edpFornecedor.Campo.Text ;
    lWhere := ' and ';
    sFiltro := sFiltro + 'Fornecedor: ' + edpFornecedor.Campo.Text ;
  end;

  if ((chkNF.Checked) and (edtNF.Text <> '')) then
  begin
    lSql := lSql +
             lWhere + ' a.N_NF = '+edtNF.Text ;
    lWhere := ' and ';
    sFiltro := sFiltro + 'NF: ' + edtNF.Text;
  end;

  case rgTipo.ItemIndex of
    0:
      lSql := lSql + lWhere + ' c.baixa_data is null ';
    else
    begin
      if (rgTipo.ItemIndex = 1) then
        lSql := lSql + lWhere + ' c.baixa_data is not null ';

      lSql := lSql +
              ' union all '+
              'select cast(''P'' as char(1)) tabela,cast(''SIM'' as char(3)) BAIXADA, A.N_NF, A.EMISSAO, x.NDUP,'+
              'B.RAZAO_NOME FORNECEDOR, y.DVENC, X.VALOR VDUP, X.ID_NOTAENTRADA ID_NOTA '+
              'from nota_entrada_parcial x '+
              'left join nota_entrada_pagar y on (y.ID_NOTAENTRADA = x.id_notaentrada and y.ndup = x.ndup) '+
              'left join NOTA_ENTRADA A on (x.ID_NOTAENTRADA = A.ID) '+
              'left join FABRICANTE B on (B.CODIGO = A.CODFOR) '+
              'left join CHEQUE D on (D.ID_BANCO = x.conta and '+
              '      D.NUM_CHEQUE = x.num_cheque) '+
              'where cast(x.data_hora as date) between '+
                QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' +
                QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
    end;
  end;

  dsPagar.Close;
  dsPagar.Data := DM.LerDataSet(lSql);

  if dsPagar.IsEmpty then
    TMensagem.Informacao('Nenhuma duplicata encontrada');
end;

procedure TFrm_ContasPagar.actRel1Execute(Sender: TObject);
begin
  inherited;
  if dsPagar.IsEmpty then
    Exit;

  if not Assigned(Rel_ContasAPagar) then
    Rel_ContasAPagar := TRel_ContasAPagar.Create(Self);
  try
    with Rel_ContasAPagar do
    begin
      rlblNomeRelatorio.Caption := 'Contas a Pagar';
      Relatorio.PrintDialog := False;
      Relatorio.ShowProgress := False;

      rlMemoParametros.Lines.Clear;
      rlMemoParametros.Lines.Add('Situação da(s) Duplicata(s): ');
      rlMemoParametros.Lines.Add('  ' + rgTipo.Items[rgTipo.ItemIndex]);
      rlMemoParametros.Lines.Add('Filtro:');
      rlMemoParametros.Lines.Add('  ' + sFiltro);

      Executar(dsPagar);
    end;
  finally
    FreeAndNil(Rel_ContasAPagar);
  end;
end;

procedure TFrm_ContasPagar.actRestaurarBaixaExecute(Sender: TObject);
begin
  inherited;
  if ((dsPagar.IsEmpty) or (dsPagar.FieldByName('BAIXADA').AsString = 'NÃO')) then
    Exit;

  if not (DM.Usuario.Perfil = 'Administrador') then
  begin
    TMensagem.Informacao('Perfil de usuário não permitido para restauração de baixa.');
    Exit;
  end
  else if TMensagem.Pergunta('Confirma a restauração da Duplicata: ' + dsPagar.FieldByName('NDUP').AsString + ' no valor de R$ ' + FormatCurr('#,##0.00', dsPagar.FieldByName('VDUP').AsCurrency) + ' ?') then
  begin
    if DM.SMFormaPagto.setBaixaRestaura(DM.BancoDados, False, 0, 'CAP', 'R',
                                        '', dsPagar.FieldByName('ID_NOTA').AsInteger,
                                        dsPagar.FieldByName('NDUP').AsString,
                                        FormatDateTime('dd/mm/yyyy', Date), 0, 0,
                                        dsPagar.FieldByName('VDUP').AsCurrency,
                                        DM.Usuario.login, '', '', '', 0) then
    begin
      TMensagem.Informacao('Duplicata restaurada com sucesso.');
      actPesquisar.Execute;
    end
    else
      TMensagem.Erro('Não foi possível efetuar a restauração da duplicata. Tente novamente.');
  end;
end;

procedure TFrm_ContasPagar.actVisualizarDupExecute(Sender: TObject);
var
  lBaixa: TFrmBaixaContaPagar;
begin
  inherited;
  if dsPagar.IsEmpty then
  begin
    TMensagem.Informacao('Nenhuma duplicata encontrada.');
    Exit;
  end;

  if not Assigned(FrmBaixaContaPagar) then
    FrmBaixaContaPagar := TFrmBaixaContaPagar.Create(Self);
  try
    FrmBaixaContaPagar.CarregarDupl(dsPagar.FieldByName('ID_NOTA').AsInteger,
                                    dsPagar.FieldByName('NDUP').AsInteger,True,
                                    dsPagar.FieldByName('TABELA').AsString);
    FrmBaixaContaPagar.ShowModal;
  finally
    FreeAndNil(FrmBaixaContaPagar);
  end;
end;

procedure TFrm_ContasPagar.chkFornecedorClick(Sender: TObject);
begin
  inherited;
  edpFornecedor.Visible := chkFornecedor.Checked ;
end;

procedure TFrm_ContasPagar.chkNFClick(Sender: TObject);
begin
  inherited;
  lblnNF.Visible := chkNF.Checked ;
  edtNF.Visible := chkNF.Checked ;
end;

procedure TFrm_ContasPagar.chkPeriodoClick(Sender: TObject);
begin
  inherited;
//  cbbPeriodo.Visible := chkPeriodo.Checked ;
//  dtp1.Visible := chkPeriodo.Checked ;
//  dtp2.Visible := chkPeriodo.Checked ;
end;

procedure TFrm_ContasPagar.dbgrdParcelaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//  TDbGrid(Sender).Canvas.font.Color := clBlack; //aqui é definida a cor da fonte
//  if gdSelected in State then
//    with (Sender as TDBGrid).Canvas do
//    begin
//      Brush.Color := $00CB8361; //aqui é definida a cor do fundo
//      FillRect(Rect);
//    end;
//
//  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[DataCol].field, State);
end;

procedure TFrm_ContasPagar.dbgrdParcelaTitleClick(Column: TColumn);
begin
  inherited;
  dsPagar.IndexFieldNames := Column.FieldName;
end;

procedure TFrm_ContasPagar.edpFornecedorPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Fornecedor.ToString;
end;

procedure TFrm_ContasPagar.FormCreate(Sender: TObject);
begin
  inherited;
  edpFornecedor.Visible := False ;
  dtp1.Date := Date;
  dtp2.Date := Date;
end;

procedure TFrm_ContasPagar.imgFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.

