unit UFrm_GerOrcItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient;

type
  TFrm_GerOrcItens = class(TPdr_Child2)
    pnlFundo0: TPanel;
    dbgrdOrcamentos: TDBGrid;
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    cdsItensORDEM: TIntegerField;
    cdsItensQTDE: TStringField;
    cdsItensVUNIT: TFMTBCDField;
    cdsItensVDESC: TFMTBCDField;
    cdsItensVTOTAL: TFMTBCDField;
    cdsItensNOME: TStringField;
    cdsItensDESC_MAX: TFMTBCDField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsItensDESC_MAXGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    procedure Executar(aID:string);
  end;

var
  Frm_GerOrcItens: TFrm_GerOrcItens;

implementation

uses
  UDM, u_Mensagem;

{$R *.dfm}

{ TFrm_GerOrcItens }

procedure TFrm_GerOrcItens.cdsItensDESC_MAXGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (Sender.AsCurrency = 0) then
    Text := ''
  else
    Text := FormatCurr('R$ #,##0.00',Sender.AsCurrency);
end;

procedure TFrm_GerOrcItens.Executar(aID: string);
const
  SQL = 'select a.ordem, cast((a.qtde||'' ''||a.unid) as varchar(50)) qtde, a.vunit, a.vdesc, a.vtotal,'+
        'b.nome,cast(iif(coalesce(b.desc_maximo,0)>0,(a.vtotal*(b.desc_maximo/100)),0)as numeric(10,2))desc_max '+
        'from orcamento_item a '+
        'left join produto b on (b.codigo=a.id_prod) '+
        'where a.id_orcamento = %s '+
        'order by a.ordem';
begin
  cdsItens.Close;
  cdsItens.Data := DM.LerDataSet(Format(SQL,[aID]));

end;

procedure TFrm_GerOrcItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_Escape) then
    actSair.Execute;
end;

end.
