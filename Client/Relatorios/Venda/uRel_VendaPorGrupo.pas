unit uRel_VendaPorGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio2, System.Actions,
  Vcl.ActnList, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, RLReport,
  Vcl.ComCtrls, UEDPesquisa, Data.DB, Datasnap.DBClient;

type
  TRel_VendaPorGrupo = class(TPdr_Relatorio2)
    Label1: TLabel;
    Label2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    edpesGrupo: TEdPesquisa;
    ds1: TDataSource;
    cds1: TClientDataSet;
    rlgrp1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    cds1TOTAL: TFloatField;
    cds1IDGRUPO: TIntegerField;
    cds1GRUPO: TStringField;
    cds1VENDA: TIntegerField;
    cds1EMISSAO: TDateField;
    cds1CLIENTE: TStringField;
    cds1VENDEDOR: TStringField;
    cds1QTDE: TFloatField;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    procedure FormCreate(Sender: TObject);
    procedure edpesGrupoPesquisa(Sender: TObject; var Retorno: string);
    procedure actGerarRelatorioExecute(Sender: TObject);
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
begin
  inherited;
  lSQL := 'select sum(pi.QTDE) QTDE, cast(sum(pi.QTDE * P.PRECO_VENDA) as numeric(10,2)) TOTAL, coalesce(P.COD_GRUPO, -1) IDGRUPO, '+
          '       coalesce(GP.DESCRI, ''SEM GRUPO'') GRUPO, PM.ID VENDA, PM.EMISSAO, C.NOME_RAZAO CLIENTE, U.USU_NOME VENDEDOR '+
          'from PDV_MASTER PM '+
          'left join CLIENTE C on (C.CODIGO = PM.ID_CLIENTE) '+
          'left join USUARIO U on (U.ID_VENDEDOR = PM.ID_VENDEDOR) '+
          'left join PDV_ITENS pi on (pi.TIPO = PM.TIPO and '+
          '      pi.ID = PM.ID) '+
          'left join PRODUTO P on (P.CODIGO = pi.ID_PRODUTO) '+
          'left join GRUPO_PROD GP on (GP.CODIGO = P.COD_GRUPO) '+
          'where PM.EMISSAO between ''01.01.2021'' and ''today'' and '+
          '      PM.STATUS = ''EFETUADA'' '+
//          '      --and p.cod_grupo = 2
          'group by 3, 4, 5, 6, 7, 8';
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
  lblTitulo.Caption := 'VENDAS POR GRUPO DE PRODUTO';
  rlblTitRelatorio.Caption := 'VENDAS POR GRUPO DE PRODUTO';
  dtp1.Date := Date;
  dtp2.Date := Date;
  dtp1.SetFocus;
end;

end.
