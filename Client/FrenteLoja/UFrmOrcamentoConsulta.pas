unit UFrmOrcamentoConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient, Vcl.ComCtrls,
  UEDPesquisa, System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TfrmOrcamentoConsulta = class(TPdr_Child)
    pnlFundo: TPanel;
    dbgrd1: TDBGrid;
    pnlFiltro: TPanel;
    Label1: TLabel;
    cbbCampo: TComboBox;
    nb1: TNotebook;
    dsGrid: TClientDataSet;
    sGrid: TDataSource;
    dsGridID: TIntegerField;
    dsGridSTATUS: TStringField;
    dsGridCLIENTE: TStringField;
    dsGridEMISSAO: TDateField;
    dsGridTOTAL: TFMTBCDField;
    edtId: TEdit;
    cbbStatus: TComboBox;
    EdPesquisa1: TEdPesquisa;
    Label4: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    dsGridPAGTO: TStringField;
    dsGridID_CLIENTE: TIntegerField;
    pm1: TPopupMenu;
    Cancelaroramento1: TMenuItem;
    procedure cbbCampoChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure EdPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure Cancelaroramento1Click(Sender: TObject);
  private
    FIdOrcamento: Integer;
    FICliente: Integer;
    procedure Pesquisar(pIndex:Integer;pValor: string);
    procedure SetIdCliente(const Value: Integer);
    procedure SetIdOrcamento(const Value: Integer);
  public
    property IdCliente : Integer read FICliente write SetIdCliente;
    property IdOrcamento: Integer  read FIdOrcamento write SetIdOrcamento;
  end;

var
  frmOrcamentoConsulta: TfrmOrcamentoConsulta;

implementation

uses
  UDM, u_Mensagem, UConsulta;

{$R *.dfm}

procedure TfrmOrcamentoConsulta.Cancelaroramento1Click(Sender: TObject);
const
  SQL = 'update ORCAMENTO a set a.STATUS = ''CANCELADO'' where a.ID = %s';
begin
  inherited;
  if dsGrid.FieldByName('status').AsString = 'VENDIDO' then
    TMensagem.Informacao('Não é possivel cancelar orçamento vendido.');

  if dsGrid.FieldByName('status').AsString = 'EM ABERTO' then
    if TMensagem.Pergunta('Confirma o cancelamento do orçamento de nº ' + dsGrid.FieldByName('id').AsString) then
    begin
      try
        DM.ExecutarSQL(DM.BancoDados, Format(SQL, [dsGrid.FieldByName('id').AsString]));
        keybd_event(VK_F2, 0, 0, 0);
      except
        TMensagem.Erro('Não foi possivel cancelar o oçamento. Tente novamente.');
      end;
    end;
end;

procedure TfrmOrcamentoConsulta.cbbCampoChange(Sender: TObject);
begin
  inherited;
  case cbbCampo.ItemIndex of
    0:
      begin
        nb1.ActivePage := 'id';
        edtId.SetFocus;
      end;
    1:begin
      nb1.ActivePage := 'status';
      cbbStatus.SetFocus;
    end;
    2: begin
      nb1.ActivePage := 'cliente';
      EdPesquisa1.Campo.SetFocus;
    end;
    3:begin
      nb1.ActivePage := 'emissao';
      dtp1.Date := Date;
      dtp2.Date := Date;
      dtp1.SetFocus;
    end;
  end;
end;

procedure TfrmOrcamentoConsulta.dbgrd1DblClick(Sender: TObject);
begin
  inherited;
  if dsGrid.IsEmpty then
    Abort;

  if dsGrid.FieldByName('status').AsString = 'VENDIDO' then
  begin
    TMensagem.Atencao('Orçamento ja foi gerado venda.');
    Abort;
  end;

  FICliente := dsGrid.FieldByName('id_cliente').AsInteger;
  FIdOrcamento := dsGrid.FieldByName('id').AsInteger;
  Close;
end;

procedure TfrmOrcamentoConsulta.EdPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Cliente.ToString;
end;

procedure TfrmOrcamentoConsulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) then
  begin
    case cbbCampo.ItemIndex of
      0:
        begin
          if ((StrToInt(edtId.Text) < 1) or (edtId.Text = EmptyStr)) then
          begin
            TMensagem.Atencao('Informe o nº do orçamento.');
            edtId.SetFocus;
          end
          else
            Pesquisar(0, edtId.Text);
        end;
      1:
        Pesquisar(1, cbbStatus.Text);
      2:
        begin
          if (EdPesquisa1.Campo.Text = EmptyStr) then
          begin
            TMensagem.Atencao('Informe o cliente.');
            EdPesquisa1.Campo.SetFocus;
          end
          else
            Pesquisar(2, EdPesquisa1.Campo.Text);
        end;
      3:
        Pesquisar(3, '');
    end;
  end;
end;

procedure TfrmOrcamentoConsulta.FormShow(Sender: TObject);
begin
  inherited;
  Pesquisar(1, cbbStatus.Text);
end;

procedure TfrmOrcamentoConsulta.Pesquisar(pIndex:Integer; pValor: string);
var
  lSQL: string;
begin
  lSQL := 'select a.ID,a.STATUS,a.ID_CLIENTE,c.NOME_RAZAO cliente,a.EMISSAO,'+
          'iif (a.ID_FORMAPAGTO is null,''A VISTA'',(select x.DESCRICAO from CONDPAGTO x where x.CODIGO = a.ID_FORMAPAGTO)) pagto,'+
          'sum(b.VTOTAL) total '+
          'from ORCAMENTO a '+
          'left outer join ORCAMENTO_ITEM b on (b.ID_ORCAMENTO = a.ID) '+
          'left outer join CLIENTE c on (c.CODIGO = a.ID_CLIENTE) ';
  case pIndex of
    0:
      lSQL := lSQL + 'where a.ID = '+pValor;
    1:
      lSQL := lSQL + 'where a.STATUS = '+QuotedStr(pValor);
    2:
      lSQL := lSQL + 'where a.ID_CLIENTE = '+pValor;
    3:
      lSQL := lSQL + 'where a.EMISSAO between '+QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date))+' and '+
                                                QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
  end;

  lSQL := lSQL+' group by 1,2,3,4,5,a.ID_FORMAPAGTO '+
               'order by 1 desc';

  dsGrid.Close;
  dsGrid.Data := DM.LerDataSet(lSQL);

end;

procedure TfrmOrcamentoConsulta.SetIdCliente(const Value: Integer);
begin
  FICliente := Value;
end;

procedure TfrmOrcamentoConsulta.SetIdOrcamento(const Value: Integer);
begin
  FIdOrcamento := Value;
end;

end.
