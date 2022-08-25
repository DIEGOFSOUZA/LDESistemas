unit URel_NFEntradaPorClassificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio2, System.Actions,
  Vcl.ActnList, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, RLReport,
  UEDPesquisa, Vcl.ComCtrls, Data.DB, Datasnap.DBClient;

type
  TRel_NFEntradaPorClassificacao = class(TPdr_Relatorio2)
    Label1: TLabel;
    Label2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    edpesClassificacao: TEdPesquisa;
    cdsDetail: TClientDataSet;
    dsDetail: TDataSource;
    dsMaster: TDataSource;
    cdsMaster: TClientDataSet;
    cdsDetailENTRADA: TDateField;
    cdsDetailTOTNOTA: TCurrencyField;
    cdsDetailID_HISTORICO: TIntegerField;
    cdsDetailDESCRICAO: TStringField;
    cdsDetailRAZAO_NOME: TStringField;
    cdsMasterCLASSIFICACAO: TStringField;
    cdsMasterTOTAL: TFMTBCDField;
    cdsMasterIDHIST: TIntegerField;
    rlgrp1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel10: TRLLabel;
    RLBand3: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText10: TRLDBText;
    cdsDetailN_NF: TIntegerField;
    procedure actGerarRelatorioExecute(Sender: TObject);
    procedure edpesClassificacaoPesquisa(Sender: TObject; var Retorno: string);
    procedure FormCreate(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_NFEntradaPorClassificacao: TRel_NFEntradaPorClassificacao;

implementation

uses
  UConsulta, UDM;

{$R *.dfm}

procedure TRel_NFEntradaPorClassificacao.actGerarRelatorioExecute(
  Sender: TObject);
var
  lSQL: string;
  lIDHistorico: Integer;
  lTotNFs: Currency;
begin
  inherited;
  cdsDetail.Filtered := False;
  lSQL := 'select NE.N_NF, NE.ENTRADA, NE.ID_HISTORICO, H.DESCRICAO, F.RAZAO_NOME,'+
          'cast(coalesce((select  sum(np.vdup) from nota_entrada_pagar np where np.id_notaentrada = ne.id),NE.TOTNOTA) as double precision) TOTNOTA '+
          'from NOTA_ENTRADA NE '+
          'left join HISTORICO H on (H.ID = NE.ID_HISTORICO) '+
          'left join FABRICANTE F on (F.CODIGO = NE.CODFOR) '+
          'where NE.ENTRADA between '+QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date))+ ' and '+
                                      QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date)) ;
  if (edpesClassificacao.Campo.Text <> '') then
    lSQL := lSQL + ' and NE.ID_HISTORICO = ' + edpesClassificacao.Campo.Text;

  cdsDetail.IndexFieldNames := 'ID_HISTORICO;ENTRADA';
  cdsDetail.Close;
  cdsDetail.Data := DM.LerDataSet(lSQL);

  cdsMaster.Close;
  cdsMaster.CreateDataSet;

  cdsDetail.DisableControls;
  try
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      lIDHistorico := cdsDetail.FieldByName('ID_HISTORICO').AsInteger;
      lTotNFs := 0;

      cdsMaster.Append;
      cdsMaster.FieldByName('IDHIST').AsInteger := lIDHistorico;
      cdsMaster.FieldByName('CLASSIFICACAO').AsString := cdsDetail.FieldByName('DESCRICAO').AsString;
      while ((not cdsDetail.Eof) and (lIDHistorico = cdsDetail.FieldByName('ID_HISTORICO').AsInteger)) do
      begin
        lTotNFs := lTotNFs + cdsDetail.FieldByName('TOTNOTA').AsCurrency;
        cdsDetail.Next;
      end;
      cdsMaster.FieldByName('TOTAL').AsCurrency := lTotNFs;
      cdsMaster.Post;
//      cdsDetail.Next;
    end;
  finally
    cdsDetail.EnableControls;
  end;
  Relatorio.PreviewModal;
end;

procedure TRel_NFEntradaPorClassificacao.edpesClassificacaoPesquisa(
  Sender: TObject; var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico().ToString;
end;

procedure TRel_NFEntradaPorClassificacao.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitulo.Caption := '  NOTAS FISCAIS DE ENTRADA POR CLASSIFICAÇÃO';
  rlblTitRelatorio.Caption := 'NOTAS FISCAIS DE ENTRADA POR CLASSIFICAÇÃO';
  dtp1.Date := Date;
  dtp2.Date := Date;
  dtp1.SetFocus;

  Self.ClientHeight := 185;
  Self.ClientWidth := 729;
end;

procedure TRel_NFEntradaPorClassificacao.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  cdsDetail.Filtered := False;
  cdsDetail.Filter := 'ID_HISTORICO=' + cdsMaster.FieldByName('IDHIST').AsString;
  cdsDetail.Filtered := True;
end;

end.
