unit URel_ClienteNaoComprou;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio2, System.Actions,
  Vcl.ActnList, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, RLReport,
  Vcl.ComCtrls, Data.DB, Datasnap.DBClient;

type
  TRel_ClienteNaoComprou = class(TPdr_Relatorio2)
    Label1: TLabel;
    Label2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    cdsMaster: TClientDataSet;
    dsMaster: TDataSource;
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
    RLMemo1: TRLMemo;
    RLDBText1: TRLDBText;
    cdsMasterCODIGO: TIntegerField;
    cdsMasterNOME: TStringField;
    cdsMasterFONE: TStringField;
    cdsMasterDATA_ULTIMACOMPRA: TDateField;
    cdsMasterVALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure actGerarRelatorioExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_ClienteNaoComprou: TRel_ClienteNaoComprou;

implementation

uses
  UDM;

{$R *.dfm}

procedure TRel_ClienteNaoComprou.actGerarRelatorioExecute(Sender: TObject);
const
  SQL = 'select C.CODIGO, C.NOME_RAZAO NOME, cast(coalesce(C.DDD_CEL || C.CEL, C.DDD_FONE || C.TELEFONE1) as varchar(18)) FONE,'+
        '       C.DATA_ULTIMACOMPRA,'+
        '       (select first 1 P.VL_TOTAL '+
        '        from PDV_MASTER P '+
        '        where P.ID_CLIENTE = C.CODIGO and '+
        '              P.EMISSAO = C.DATA_ULTIMACOMPRA) VALOR '+
        'from CLIENTE C '+
        'where not exists(select PM.ID_CLIENTE '+
        '                 from PDV_MASTER PM '+
        '                 where PM.ID_CLIENTE = C.CODIGO and '+
        '                       PM.EMISSAO between %s and %s) '+
        'order by C.CODIGO';
begin
  inherited;
  cdsMaster.Close;
  cdsMaster.Data := DM.LerDataSet(Format(SQL,[QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date)),
                                               QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date))]));
  Relatorio.PreviewModal;
end;

procedure TRel_ClienteNaoComprou.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitulo.Caption        := '  RELATÓRIO DE CLIENTES SEM VENDA';
  rlblTitRelatorio.Caption := 'RELATÓRIO DE CLIENTES SEM VENDA';
  dtp1.Date := StrToDate('01/07/2021');
  dtp2.Date := StrToDate('10/07/2021');
  dtp1.SetFocus;

  Self.ClientHeight := 185;
  Self.ClientWidth := 729;
end;

end.
