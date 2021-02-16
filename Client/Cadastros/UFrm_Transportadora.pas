unit UFrm_Transportadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, Vcl.ComCtrls, System.Actions,
  Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, UDBPesquisa, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage;

type
  TFrm_Transportadora = class(TPdr_Cad)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    cdsCODIGO: TIntegerField;
    cdsTIPO_PESSOA: TStringField;
    cdsRAZAO: TStringField;
    cdsFANTASIA: TStringField;
    cdsCNPJ: TStringField;
    cdsCPF: TStringField;
    cdsCODFORNECEDOR: TIntegerField;
    cdsISENTO_ICMS: TStringField;
    cdsINSC_ESTADUAL: TStringField;
    cdsINSC_MUNICIPAL: TStringField;
    cdsMODAL: TStringField;
    cdsCONTATO_FONE: TStringField;
    cdsCONTATO_CEL: TStringField;
    cdsCONTATO_EMAIL: TStringField;
    cdsCONTATO_NOME: TStringField;
    cdsCONTATO_SITE: TStringField;
    cdsCEP: TStringField;
    cdsENDERECO: TStringField;
    cdsNUMERO: TStringField;
    cdsCOMPLEMENTO: TStringField;
    cdsBAIRRO: TStringField;
    cdsCIDADE: TStringField;
    cdsCOD_PAIS: TIntegerField;
    cdsCOD_EST: TStringField;
    cdsFORNECEDOR: TStringField;
    cdsESTADO: TStringField;
    cdsPAIS: TStringField;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit21: TDBEdit;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    DBPesquisa2: TDBPesquisa;
    DBPesquisa3: TDBPesquisa;
    Label1: TLabel;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    lbinscestadual: TLabel;
    DBEdit4: TDBEdit;
    lbinscmunicipal: TLabel;
    DBEdit5: TDBEdit;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBPesquisa1: TDBPesquisa;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBPesquisa2Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBPesquisa3Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
  private
    { Private declarations }
    procedure AlteraPessoa() ;
    procedure MontaSql(pCodigo : Integer) ;
    function Validar() : Boolean ;
  public
    { Public declarations }
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
  end;

var
  Frm_Transportadora: TFrm_Transportadora;

implementation

{$R *.dfm}

uses UDM, UConsulta, UMakeReadWrite;

{ TFrm_Transportadora }

procedure TFrm_Transportadora.AlteraPessoa;
begin
 case DBComboBox1.ItemIndex of
  0: begin
    Label2.Caption := 'Nome*' ;
    DBEdit1.DataField := 'RAZAO' ;


    Label9.Caption   := 'CPF' ;
    DBEdit7.DataField := 'CPF' ;


    lbinscestadual.Visible     := false ;
    lbinscmunicipal.Visible    := false ;
    DBEdit4.Visible := false;
    DBEdit5.Visible := false;
    
  end;
  1: begin
    Label2.Caption   := 'Razão Social*' ;
    DBEdit1.DataField := 'RAZAO' ;

    Label9.Caption   := 'CNPJ' ;
    DBEdit7.DataField := 'CNPJ' ;

    lbinscestadual.Visible     := true ;
    lbinscmunicipal.Visible    := true ;
    DBEdit4.Visible := true;
    DBEdit5.Visible := true;
  end;

 end;
end;

procedure TFrm_Transportadora.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0 ;
  cdsTIPO_PESSOA.AsString  := 'Pessoa Fisica' ;
end;

procedure TFrm_Transportadora.DBComboBox1Change(Sender: TObject);
begin
  inherited;
    AlteraPessoa() ;
end;

procedure TFrm_Transportadora.DBPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
   Retorno := IntToStr(Consulta.Fornecedor());
end;

procedure TFrm_Transportadora.DBPesquisa2Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Estado() ;
end;

procedure TFrm_Transportadora.DBPesquisa3Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
 Retorno := IntToStr(Consulta.Pais) ;
end;

procedure TFrm_Transportadora.Excluir;
var mCodigo : integer ;
begin
  mCodigo := cdsCODIGO.AsInteger ;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setTransportadora(dm.BancoDados,
       mCodigo,cds.Delta) ;

    cds.Close ;
    cds.CreateDataSet ;
  end;
end;

procedure TFrm_Transportadora.FormCreate(Sender: TObject);
begin
  inherited;
   PageControl1.TabIndex := 0 ;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFrm_Transportadora.Gravar;
var mRetorno : OleVariant ;
begin
  if not Validar then
   Exit ;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setTransportadora(DM.BancoDados,
       cdsCODIGO.AsInteger,cds.Delta) ;
    cds.Close ;
    cds.Data := mRetorno ;
  end;
end;

procedure TFrm_Transportadora.localizar;
begin
  inherited;
  MontaSql(Consulta.Transportadora);
  AlteraPessoa ;
end;

procedure TFrm_Transportadora.MontaSql(pCodigo: Integer);
begin
        if pCodigo = 0 then
    Exit ;

  cds.Close ;
  cds.Data := DM.SMCadastroClient.getTransportadora(DM.BancoDados,pCodigo) ;

  MakeReadWrite(cdsESTADO);
  MakeReadWrite(cdsPAIS);
end;

procedure TFrm_Transportadora.Novo;
begin
  inherited;
  DBComboBox1.SetFocus ;
end;

function TFrm_Transportadora.Validar: Boolean;
begin

end;

end.
