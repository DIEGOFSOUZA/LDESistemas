unit UDMACBr;

interface

uses
  System.SysUtils, System.Classes, ACBrNFe, ACBrValidador, ACBrBase, ACBrDFe;

type
  TDMACBr = class(TDataModule)
    ACBrNFe1: TACBrNFe;
    ACBrValidador1: TACBrValidador;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMACBr: TDMACBr;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
