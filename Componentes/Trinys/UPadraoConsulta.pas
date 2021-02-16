unit UPadraoConsulta;

interface

uses System.Classes, UPadraoExecutaConsultaSQL ;

type
  TSimNao = (Sim,Nao) ;

  TExecutaPesquisaF3 = procedure (Sender : TObject;
                      var Retorno : String) of object ;

type
  TConsultaTabela = class(TComponent)
  private
    fTabela : String ;
    fCampoPesquisa : String ;
    fCampoMostrar: String;
    fExecutarSQL: TExecutaSQL;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Tabela   : String read fTabela write fTabela ;
    property Pesquisa : String read fCampoPesquisa write fCampoPesquisa ;
    property Mostrar  : String read fCampoMostrar write fCampoMostrar ;
    property ExecutaSQL : TExecutaSQL read fExecutarSQL write fExecutarSQL ;
  end ;


implementation

{ TConsultaTabela }

constructor TConsultaTabela.Create(AOwner: TComponent);
begin
  inherited Create(AOwner) ;
  fTabela := '' ;
  fCampoPesquisa := '' ;
  fCampoMostrar := '' ;
  fExecutarSQL := nil ;
end;

end.
