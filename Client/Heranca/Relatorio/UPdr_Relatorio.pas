unit UPdr_Relatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Child, RLReport;

type
  TPdr_Relatorio = class(TPdr_Child)
    Relatorio: TRLReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_Relatorio: TPdr_Relatorio;

implementation

{$R *.dfm}

end.
