unit UFrm_Conta_Pix_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Conta_Pix_PDV = class(TForm)
    pnlFundo: TPanel;
    lblTit: TLabel;
    rgcontas: TRadioGroup;
    pnlLeft: TPanel;
    pnlRodape: TPanel;
    pnlConfirma: TPanel;
    btnConfirma: TSpeedButton;
    pnlCancela: TPanel;
    btnCancela: TSpeedButton;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FConta: Integer;
    procedure SetConta(const Value: Integer);
    procedure ListaContas();
  public
    property Conta: Integer read FConta write SetConta;
  end;

var
  Frm_Conta_Pix_PDV: TFrm_Conta_Pix_PDV;

implementation

uses
  UDM;

{$R *.dfm}

{ TFrm_Conta_Pix_PDV }

procedure TFrm_Conta_Pix_PDV.btnCancelaClick(Sender: TObject);
begin
  Conta := -1;
  Close;
end;

procedure TFrm_Conta_Pix_PDV.btnConfirmaClick(Sender: TObject);
begin
  DM.dsConsulta.Locate('bco_nome',rgcontas.Items[rgcontas.ItemIndex],[]);
  Conta := DM.dsConsulta.FieldByName('id').AsInteger;
  Close;
end;

procedure TFrm_Conta_Pix_PDV.FormShow(Sender: TObject);
begin
  ListaContas;
end;

procedure TFrm_Conta_Pix_PDV.ListaContas;
const
  SQL = 'select c.id, c.bco_nome '+
        'from conta_bancaria c '+
        'where c.pix_chave is not null';
begin
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(SQL);

  if not DM.dsConsulta.IsEmpty then
  begin
    rgcontas.Items.Clear;
    DM.dsConsulta.First;
    while not DM.dsConsulta.Eof do
    begin
      rgcontas.Items.Add(DM.dsConsulta.FieldByName('bco_nome').AsString);
      DM.dsConsulta.Next;
    end;
    rgcontas.ItemIndex := -1;
  end;
end;

procedure TFrm_Conta_Pix_PDV.SetConta(const Value: Integer);
begin
  FConta := Value;
end;

end.
