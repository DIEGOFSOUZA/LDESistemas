unit uRel_VendaPorGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Relatorio2, System.Actions, Vcl.ActnList, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, RLReport, Vcl.ComCtrls, UEDPesquisa, Data.DB,
  Datasnap.DBClient;

type
  TRel_VendaPorGrupo = class(TPdr_Relatorio2)
    Label1: TLabel;
    Label2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    edpesGrupo: TEdPesquisa;
    dsDetalhe: TDataSource;
    cdsDetalhe: TClientDataSet;
    cdsDetalheTOTAL: TFloatField;
    cdsDetalheIDGRUPO: TIntegerField;
    cdsDetalheGRUPO: TStringField;
    cdsDetalheVENDA: TIntegerField;
    cdsDetalheEMISSAO: TDateField;
    cdsDetalheCLIENTE: TStringField;
    cdsDetalheVENDEDOR: TStringField;
    cdsDetalheQTDE: TFloatField;
    rlgrp1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    cdsGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    cdsGrupoQTDE: TFloatField;
    cdsGrupoTOTAL: TFMTBCDField;
    cdsGrupoIDGRUPO: TIntegerField;
    cdsGrupoGRUPO: TStringField;
    cdsGrupoQTDE_VENDA: TIntegerField;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    chkResumo: TCheckBox;
    rlmFiltro: TRLMemo;
    procedure FormCreate(Sender: TObject);
    procedure edpesGrupoPesquisa(Sender: TObject; var Retorno: string);
    procedure actGerarRelatorioExecute(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_VendaPorGrupo: TRel_VendaPorGrupo;

implementation

uses
  UConsulta, UDM;

{$R *.dfm}

procedure TRel_VendaPorGrupo.actGerarRelatorioExecute(Sender: TObject);
var
  lSQL: string;
  lIdGrupo,lQtdeVenda:Integer;
  lItVendido : Extended;
  lTotvenda: Currency;
begin
  inherited;
  cdsDetalhe.Filtered := False;
  lSQL := 'select cast(sum(pi.QTDE) as double precision) QTDE,cast(sum(pi.VL_TOTAL) as double precision) TOTAL,'+
  //cast(sum(pi.QTDE * P.PRECO_VENDA) as double precision) TOTAL,'+
          'coalesce(P.COD_GRUPO, -1) IDGRUPO, coalesce(GP.DESCRI, ''GRUPO NAO INFORMADO'') GRUPO,'+
          'PM.ID VENDA, PM.EMISSAO, C.NOME_RAZAO CLIENTE, U.USU_NOME VENDEDOR '+
          'from PDV_MASTER PM '+
          'left join CLIENTE C on (C.CODIGO = PM.ID_CLIENTE) '+
          'left join USUARIO U on (U.ID_VENDEDOR = PM.ID_VENDEDOR) '+
          'left join PDV_ITENS pi on (pi.TIPO = PM.TIPO and '+
          '      pi.ID = PM.ID) '+
          'left join PRODUTO P on (P.CODIGO = pi.ID_PRODUTO) '+
          'left join GRUPO_PROD GP on (GP.CODIGO = P.COD_GRUPO) '+
          'where PM.EMISSAO between '+QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date))+ ' and '+
                                      QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date)) +' and '+
          '      PM.STATUS = ''EFETUADA'' ';
  if (edpesGrupo.Campo.Text <> '') then
    lSQL := lSQL + ' and p.cod_grupo = ' + edpesGrupo.Campo.Text;
  lSQL := lSQL + ' group by 3, 4, 5, 6, 7, 8';

  cdsDetalhe.IndexFieldNames := 'IDGRUPO;VENDA';
  cdsDetalhe.Close;
  cdsDetalhe.Data := DM.LerDataSet(lSQL);

  cdsGrupo.Close;
  cdsGrupo.CreateDataSet;

  cdsDetalhe.DisableControls;
  try
    cdsDetalhe.First;
    while not cdsDetalhe.Eof do
    begin
      lIdGrupo := cdsDetalhe.FieldByName('IDGRUPO').AsInteger;
      lQtdeVenda := 0;
      lItVendido := 0;
      lTotvenda := 0;

      cdsGrupo.Append;
      cdsGrupo.FieldByName('IDGRUPO').AsInteger := lIdGrupo;
      cdsGrupo.FieldByName('GRUPO').AsString := cdsDetalhe.FieldByName('GRUPO').AsString;
      while ((not cdsDetalhe.Eof) and (lIdGrupo = cdsDetalhe.FieldByName('IDGRUPO').AsInteger)) do
      begin
        Inc(lQtdeVenda);
        lItVendido := lItVendido + cdsDetalhe.FieldByName('QTDE').AsFloat;
        lTotvenda := lTotvenda + cdsDetalhe.FieldByName('TOTAL').AsCurrency;
        cdsDetalhe.Next;
      end;
      cdsGrupo.FieldByName('QTDE').AsFloat := lItVendido;
      cdsGrupo.FieldByName('TOTAL').AsCurrency := lTotvenda;
      cdsGrupo.FieldByName('QTDE_VENDA').AsInteger := lQtdeVenda;
      cdsGrupo.Post;
//      cdsDetalhe.Next;
    end;
  finally
    cdsDetalhe.EnableControls;
  end;
  RLSubDetail1.Visible := not chkResumo.Checked;
  Relatorio.PreviewModal;
end;

procedure TRel_VendaPorGrupo.edpesGrupoPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Grupo_Produto.ToString;
end;

procedure TRel_VendaPorGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitulo.Caption := '  VENDAS POR GRUPO DE PRODUTO';
  rlblTitRelatorio.Caption := 'VENDAS POR GRUPO DE PRODUTO';
  dtp1.Date := Date;
  dtp2.Date := Date;
  dtp1.SetFocus;

  Self.ClientHeight := 185;
  Self.ClientWidth  := 729;
end;

procedure TRel_VendaPorGrupo.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlmFiltro.Lines.Clear;
  rlmFiltro.Lines.Add('Período de: '+FormatDateTime('dd/mm/yyyy',dtp1.Date)+' a '+FormatDateTime('dd/mm/yyyy',dtp2.Date));
end;

procedure TRel_VendaPorGrupo.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if chkResumo.Checked then
  begin
    if RLBand1.Color = clwhite then
      RLBand1.Color := $00BBBBBB
    else
      RLBand1.Color := clwhite;
  end;

  cdsDetalhe.Filtered := False;
  cdsDetalhe.Filter := 'IDGRUPO='+cdsGrupo.FieldByName('IDGRUPO').AsString;
  cdsDetalhe.Filtered := True;
end;

end.
