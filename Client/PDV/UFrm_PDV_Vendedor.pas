unit UFrm_PDV_Vendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFrm_PDV_Vendedor = class(TPdr_Child)
    pnlFundo: TPanel;
    lblTitulo: TLabel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    cbbVendedor: TComboBox;
    Label9: TLabel;
    procedure btnSalvarClick(Sender: TObject);
  private
    fRetorno: Integer;
    fNomeVend: string;
    procedure SetRetorno(const Value: Integer);
    procedure SetNomeVend(const Value: string);

  public
    property Retorno : Integer read fRetorno write SetRetorno;
    property NomeVend : string read fNomeVend write SetNomeVend;
    procedure Listar();
  end;

var
  Frm_PDV_Vendedor: TFrm_PDV_Vendedor;

implementation

uses
  UDM;

{$R *.dfm}

{ TFrm_PDV_Vendedor }

procedure TFrm_PDV_Vendedor.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if cbbVendedor.ItemIndex = 0 then
  begin
    Retorno := -1;
  end
  else
  begin
    if DM.dsConsulta.Locate('usu_nome', cbbVendedor.Items[cbbVendedor.ItemIndex], []) then
    begin
      Retorno := DM.dsConsulta.FieldByName('ID_VENDEDOR').AsInteger;
      NomeVend := DM.dsConsulta.FieldByName('USU_NOME').AsString;
    end;
  end;
  Close ;
end;

procedure TFrm_PDV_Vendedor.Listar;
const
  SQL = 'SELECT r.USU_NOME,r.ID_VENDEDOR FROM USUARIO r '+
        'where ((r.ID_VENDEDOR is not null) and (r.ID_VENDEDOR > 0))';
begin
  cbbVendedor.Items.Clear;
  cbbVendedor.Items.Add('Não informado');

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(SQL);

  if (not DM.dsConsulta.IsEmpty) then
  begin
    DM.dsConsulta.First;
    while not DM.dsConsulta.Eof do
    begin
      cbbVendedor.Items.Add(DM.dsConsulta.FieldByName('USU_NOME').AsString);
      DM.dsConsulta.Next;
    end;
    cbbVendedor.ItemIndex := 0;
  end;
end;

procedure TFrm_PDV_Vendedor.SetNomeVend(const Value: string);
begin
  fNomeVend := Value;
end;

procedure TFrm_PDV_Vendedor.SetRetorno(const Value: Integer);
begin
  fRetorno := Value;
end;

end.
