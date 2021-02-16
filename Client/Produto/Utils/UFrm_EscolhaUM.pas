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

  UPdr_Child;

type
  TFrm_EscolhaUM = class(TPdr_Child)
    RadioGroup1: TRadioGroup;
    lblTitulo: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
    aRetQtde : Extended ;
    aRetCodUnidade : Integer ;
    aRetUnidade : string ;
    aRetPreco : Currency ;

    aQtdeConv : Extended; //output
    aVlVenda,aVlConv : Currency;
    aCodUM1,aCodUM2 : Integer ;

    aCodPro: string ;
    aQTDE : Extended ; //input

    procedure MontaSql();
  end;

var
  Frm_EscolhaUM: TFrm_EscolhaUM;

implementation

uses
  UDM;


{$R *.dfm}

{ TFrm_EscolhaUM }

procedure TFrm_EscolhaUM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    Key := #0;
    aRetUnidade := RadioGroup1.Items[RadioGroup1.ItemIndex];
    if RadioGroup1.ItemIndex = 1 then {Qtde solicitada pelo usuario X Conversao}
    begin
      aRetQtde := aQTDE * aQtdeConv;
      aRetPreco := aVlConv;
      aRetCodUnidade := aCodUM2;
    end
    else
    begin
      aRetQtde := aQTDE;
      aRetPreco := aVlVenda;
      aRetCodUnidade := aCodUM1;
    end;
    Close;
  end;
end;

procedure TFrm_EscolhaUM.MontaSql();
const
  SQL = 'SELECT b.codigo cod_UM1, b.SIGLA UM1,'+
        'coalesce(c.codigo,0) cod_UM2,coalesce(c.SIGLA,'''') UM2,'+
        'coalesce(a.CONV_QTDE,0) conv_qtde,'+
        'coalesce(a.preco_venda,0) preco_venda,'+
        'coalesce(conv_preco,a.preco_venda) conv_preco '+
        'FROM PRODUTO a '+
        'left outer join UNIDADE b on (b.CODIGO = a.COD_UNIDADE) '+
        'left outer join UNIDADE c on (c.CODIGO = a.CONV_UNIDADE) '+
        'where a.CODIGO = %s';
var
  Temp: TclientDataset;
begin
  Temp := TClientDataSet.Create(nil);
  try
    Temp.Data := DM.LerDataSet(Format(SQL, [aCodPro]));

    if Temp.IsEmpty then
      Exit;

    aQtdeConv := Temp.FieldByName('CONV_QTDE').AsFloat;
    aVlVenda := Temp.FieldByName('PRECO_VENDA').AsCurrency;
    aVlConv := Temp.FieldByName('CONV_PRECO').AsCurrency;
    RadioGroup1.Items.Add(Temp.FieldByName('UM1').AsString);
    RadioGroup1.Items.Add(Temp.FieldByName('UM2').AsString);
    RadioGroup1.ItemIndex := 0;

    aCodUM1 := Temp.FieldByName('COD_UM1').AsInteger;
    aCodUM2 := Temp.FieldByName('COD_UM2').AsInteger;
  finally
    FreeAndNil(Temp);
  end;
end;

end.
