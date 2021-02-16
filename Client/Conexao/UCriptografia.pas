unit UCriptografia;

interface

uses System.Classes ;

const
  ChaveCriptografia = 'I1n2d3u4s5t6r7i8a9T9r8i7n6y5s' ;

  Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';

type
  Criptografia = class
    private
      class function Encode64(S: string): string;
      class function Decode64(S: string): string;
      class function CriptografiaTexto(const Texto, Chave: string): string;
    public
      class function CodificarString(const Texto, Chave: string): string;
      class function DecodificarString(const Texto, Chave: string): string;

      class procedure CodificarTStrings(Texto : TStrings; const Chave : string) ;
      class procedure DecodificarTStrings(Texto : TStrings; const Chave : string) ;
  end;

implementation

{ Criptografia }

class function Criptografia.CodificarString(const Texto,
  Chave: string): string;
var txt : string ;
begin
  txt := CriptografiaTexto(Texto,Chave) ;
  txt := Encode64(txt) ;
  Result := txt ;
end;

class function Criptografia.DecodificarString(const Texto,
  Chave: string): string;
var txt : string ;
begin
  txt := Decode64(Texto) ;
  txt := CriptografiaTexto(txt,Chave) ;
  Result := txt ;
end;

class function Criptografia.CriptografiaTexto(const Texto,
  Chave: string): string;
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
  mChave : string ;
begin
  if Chave = '' then
    mChave := ChaveCriptografia
  else
    mChave := Chave ;

  Result := Texto;
  TamanhoString := Length(Texto);
  TamanhoChave := Length(mChave);
  for i := 1 to TamanhoString do
  begin
    pos := (i mod TamanhoChave);
    if pos = 0 then
      pos := TamanhoChave;
    posLetra := ord(Result[i]) xor ord(mChave[pos]);
    if posLetra = 0 then
      posLetra := ord(Result[i]);
    Result[i] := chr(posLetra);
  end;
end;

class procedure Criptografia.CodificarTStrings(Texto: TStrings;
  const Chave: string);
var
  x: integer;
begin
  for x := 0 to Texto.Count - 1 do
    Texto.Strings[x] := CodificarString(Texto.Strings[x], Chave);
end;

class procedure Criptografia.DecodificarTStrings(Texto: TStrings;
  const Chave: string);
var x : integer ;
begin
  for x := 0 to Texto.Count -1 do
    Texto.Strings[x] := DecodificarString(Texto.Strings[x],Chave) ;
end ;

class function Criptografia.Decode64(S: string): string;
var
  i: Integer;
  a: Integer;
  x: Integer;
  b: Integer;
begin
  Result := '';
  a := 0;
  b := 0;
  for i := 1 to Length(s) do
  begin
    x := Pos(s[i], codes64) - 1;
    if x >= 0 then
    begin
      b := b * 64 + x;
      a := a + 6;
      if a >= 8 then
      begin
        a := a - 8;
        x := b shr a;
        b := b mod (1 shl a);
        x := x mod 256;
        Result := Result + chr(x);
      end;
    end
    else
      Exit;
  end;
end;

class function Criptografia.Encode64(S: string): string;
var
  i: Integer;
  a: Integer;
  x: Integer;
  b: Integer;
begin
  Result := '';
  a := 0;
  b := 0;
  for i := 1 to Length(s) do
  begin
    x := Ord(s[i]);
    b := b * 256 + x;
    a := a + 8;
    while a >= 6 do
    begin
      a := a - 6;
      x := b div (1 shl a);
      b := b mod (1 shl a);
      Result := Result + Codes64[x + 1];
    end;
  end;
  if a > 0 then
  begin
    x := b shl (6 - a);
    Result := Result + Codes64[x + 1];
  end;
end;

end.
