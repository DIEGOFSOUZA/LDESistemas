program DemoExcelExport;

uses
  Forms,
  MainExcelExport in 'MainExcelExport.pas' {FormExcelExport};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Demo scExcelExport';
  Application.CreateForm(TFormExcelExport, FormExcelExport);
  Application.Run;
end.
