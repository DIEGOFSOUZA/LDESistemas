unit UMakeReadWrite;

interface

uses MidasLib,Data.DB, Datasnap.DBClient, Datasnap.DSIntf;

Type
  TClientDataSetAccess = Class (TClientDataSet);

Procedure MakeReadWrite (Const Field :TField);
procedure MakeReadWriteTabela(Const pTabela : TClientDataSet);

implementation

Procedure MakeReadWrite (Const Field :TField);
Begin
  Field.ReadOnly := False;

  With TClientDataSetAccess (Field.DataSet As TClientDataSet) Do
    Check (DSCursor.SetProp (CURProp (4) { curpropFld_MakeRW },
      Field.FieldNo));
End;


procedure MakeReadWriteTabela(Const pTabela : TClientDataSet);
var x : integer ;
begin
  for x := 0 to pTabela.FieldCount -1 do
  begin
    if pTabela.Fields[x].ReadOnly then
      MakeReadWrite( pTabela.Fields[x] );
  end;
end;

end.

