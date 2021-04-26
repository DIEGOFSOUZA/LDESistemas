unit UFrm_EscolhaUM;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,


  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,

  Datasnap.DBClient,

  UPdr_Child, Data.DB;

type
  TFrm_EscolhaUM = class(TPdr_Child)
    RadioGroup1: TRadioGroup;
    lblTitulo: TLabel;
    cdsTemp: TClientDataSet;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FUnidade: string;
    FQtdeBaixa: Extended;
    FvUnitario: Currency;
    FQtde: Extended;
    fICodpro: integer;
    fIQtde: Extended;
    FCodUnidade: integer;

  public
//    aRetQtde : Extended ;
//    aRetCodUnidade : Integer ;
//    aRetUnidade : string ;
//    aRetPreco : Currency ;
//
//    aQtdeConv : Extended; //output
//    aVlVenda,aVlConv : Currency;
//    aCodUM1,aCodUM2 : Integer ;

    //input
    property ICodPro: integer read fICodpro ;
    property IQTDE : Extended read fIQtde ;

    //output
    property CodUnidade : integer read FCodUnidade;
    property Unidade : string read FUnidade;
    property Qtde : Extended read FQtde;
    property QtdeBaixa : Extended read FQtdeBaixa;
    property vUnitario : Currency read FvUnitario;

    procedure MontaSql();
    procedure Executar(aCodPro: Integer; aQtde: Extended);
  end;

var
  Frm_EscolhaUM: TFrm_EscolhaUM;

implementation

uses
  UDM;


{$R *.dfm}

{ TFrm_EscolhaUM }

procedure TFrm_EscolhaUM.Executar(aCodPro: Integer; aQtde: Extended);
begin
  fICodpro := aCodPro;
  fIQtde := aQtde;

  FCodUnidade := 0;
  FUnidade := '';
  FQtde := 0;
  FQtdeBaixa := 0;
  FvUnitario := 0;

  //carregar RG
  RadioGroup1.Items.Clear;
  MontaSql;

end;

procedure TFrm_EscolhaUM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    Key := #0;
    if (RadioGroup1.Items.Count > 1)  then //Existe fragmentacao
    begin
      case RadioGroup1.ItemIndex of
        0:                          //venda SC CX.... qtde convertida
          begin
            FCodUnidade := cdsTemp.FieldByName('codigo').AsInteger;
            FUnidade := RadioGroup1.Items[0];
            FQtde := IQTDE;
            FQtdeBaixa := cdsTemp.FieldByName('QTDE_BAIXA').AsFloat;
            FvUnitario := cdsTemp.FieldByName('PRECO').AsCurrency;
          end;
        1:                             //venda fragmentada
          begin
            FCodUnidade := cdsTemp.FieldByName('codigof').AsInteger;
            FUnidade := RadioGroup1.Items[1];
            FQtde := IQTDE;
            FQtdeBaixa := IQTDE;
            FvUnitario := cdsTemp.FieldByName('PRECOF').AsCurrency;
          end;
      end;
    end
    else
    begin
      FCodUnidade := cdsTemp.FieldByName('codigo').AsInteger;
      FUnidade := RadioGroup1.Items[0];
      FQtde := IQTDE;
      FQtdeBaixa := IQTDE;
      FvUnitario := cdsTemp.FieldByName('PRECO').AsCurrency;
    end;

//    aRetUnidade := RadioGroup1.Items[RadioGroup1.ItemIndex];
//    if (RadioGroup1.ItemIndex = 0) then {Qtde solicitada pelo usuario X Conversao}
//    begin
//      aRetQtde := aQTDE * aQtdeConv;
//      aRetPreco := aVlConv;
//      aRetCodUnidade := aCodUM2;
//    end
//    else
//    begin
//      aRetQtde := aQTDE;
//      aRetPreco := aVlVenda;
//      aRetCodUnidade := aCodUM1;
//    end;
    Close;
  end;
end;

procedure TFrm_EscolhaUM.MontaSql();
const
//  SQL = 'SELECT b.codigo cod_UM1, b.SIGLA UM1,'+
//        'coalesce(c.codigo,0) cod_UM2,coalesce(c.SIGLA,'''') UM2,'+
//        'coalesce(a.CONV_QTDE,0) conv_qtde,'+
//        'coalesce(a.preco_venda,0) preco_venda,'+
//        'coalesce(conv_preco,a.preco_venda) conv_preco '+
//        'FROM PRODUTO a '+
//        'left outer join UNIDADE b on (b.CODIGO = a.COD_UNIDADE) '+
//        'left outer join UNIDADE c on (c.CODIGO = a.CONV_UNIDADE) '+
//        'where a.CODIGO = %s';

  SQL = 'select B.CODIGO, B.SIGLA UM, cast(%s as numeric(8,3)) QTDE,'+
        '       cast(iif(A.CONV_QTDE > 0, (%s * A.CONV_QTDE), %s) as numeric(8,3)) QTDE_BAIXA,'+
        '       A.PRECO_VENDA PRECO, C.CODIGO CODIGOF, C.SIGLA UMF, cast(%s as numeric(8,3)) QTDEF,'+
        '       cast(%s as numeric(8,3)) QTDE_BAIXAF, A.CONV_PRECO PRECOF '+
        'from PRODUTO A '+
        'left join UNIDADE B on (B.CODIGO = A.COD_UNIDADE) '+
        'left join UNIDADE C on (C.CODIGO = A.CONV_UNIDADE) '+
        'where A.CODIGO = %s';
var
  lQtde: string;
begin
  lQtde := IQTDE.ToString;
  cdsTemp.Data := DM.LerDataSet(Format(SQL, [lQtde, lQtde, lQtde, lQtde, lQtde, iCodPro.ToString]));

  if cdsTemp.IsEmpty then
    Exit;

  RadioGroup1.Items.Add(cdsTemp.FieldByName('UM').AsString);
  if (not cdsTemp.FieldByName('codigof').IsNull) then
    RadioGroup1.Items.Add(cdsTemp.FieldByName('UMF').AsString);
  RadioGroup1.ItemIndex := 0;
end;

end.
