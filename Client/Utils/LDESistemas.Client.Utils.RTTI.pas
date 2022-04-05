unit LDESistemas.Client.Utils.RTTI;

interface

uses
  Data.DB, Vcl.Forms, Vcl.Mask;

type
  Bind = class(TCustomAttribute)
  private
    FField: string;
    FDisplayLabel: string;
    FDisplayWidth: Integer;
    procedure SetField(const Value: string);
    procedure SetDisplayLabel(const Value: string);
    procedure SetDisplayWidth(const Value: Integer);
  public
    constructor Create(aField: string; aDisplayLabel: string); //; aDisplayWidth: Integer
    property Field: string read FField write SetField;
    property DisplayLabel: string read FDisplayLabel write SetDisplayLabel;
    property DisplayWidth: Integer read FDisplayWidth write SetDisplayWidth;
  end;

  TRTTIUtils = class
  private
  public
    class procedure DataSetToForm(aDataSet: TDataSet; aForm: TForm);
  end;

implementation

uses
  System.RTTI, System.Classes, Vcl.StdCtrls;

{ TRTTIUtils }

class procedure TRTTIUtils.DataSetToForm(aDataSet: TDataSet; aForm: TForm);
var
  ctxContext: TRTTIContext;
  typRtti: TRttiType;
  fldRtti: TRttiField;
  cusAttr: TCustomAttribute;
  Component: TComponent;
begin
  ctxContext := TRTTIContext.Create;
  try
    typRtti := ctxContext.GetType(aForm.ClassType);

    for fldRtti in typRtti.GetFields do
      for cusAttr in fldRtti.GetAttributes do
      begin
        if cusAttr is Bind then
        begin
          Component := aForm.FindComponent(fldRtti.Name);

          if Component is TEdit then
            TEdit(Component).Text := aDataSet.FieldByName(Bind(cusAttr).Field).AsString;

          if Component is TMaskEdit then
            TMaskEdit(Component).Text := aDataSet.FieldByName(Bind(cusAttr).Field).AsString;

          aDataSet.FieldByName(Bind(cusAttr).Field).DisplayLabel := Bind(cusAttr).DisplayLabel;
          aDataSet.FieldByName(Bind(cusAttr).Field).DisplayWidth := Bind(cusAttr).DisplayWidth;
        end;
      end;

  finally
    ctxContext.Free;
  end;
end;

{ Bind }

constructor Bind.Create(aField: string; aDisplayLabel: string);//; aDisplayWidth: Integer
begin
  FField := aField;
  FDisplayLabel := aDisplayLabel;
//  FDisplayWidth := aDisplayWidth;
end;

procedure Bind.SetDisplayLabel(const Value: string);
begin
  FDisplayLabel := Value;
end;

procedure Bind.SetDisplayWidth(const Value: Integer);
begin
//  FDisplayWidth := Value;
end;

procedure Bind.SetField(const Value: string);
begin
  FField := Value;
end;

end.

