unit UFuncoes;

interface

uses
  Vcl.Controls, Vcl.Dialogs, Vcl.Forms, Vcl.DBGrids, System.SysUtils,
  System.Classes, System.Math, System.Character, System.Variants, Data.DB,
  Datasnap.DBClient, Winapi.Windows, Winapi.Messages, ShlObj, ComObj, ActiveX,
  ACBrUtil;

type
  TCaixa = record
    Fechado : Boolean ;
    ID : integer ;
  end;

type
  TFormataValor = record
    VlString: string;
    vlFloat: Double;
    Retorno: string;
  end;

var
  cdsConsulta: TClientDataSet;

function VoltaPrecoVenda(pCodProduto : integer) : Currency;
function VoltaValor(num : extended; tam, dec : integer) : string ;
function GetValor(valor : string) : Extended;
function Arredondar(val : extended;dec : integer) : extended ;

{PDV}
function CaixaFechado() : TCaixa ;

{Cliente - limite para venda no crediario}
function ValidaLimiteCredito(pIdCliente : string; pVl_Compra : Extended):Boolean ;

function VoltaMes     (m : integer)                               : string;
function AcertaTexto  (txt : string; Tamanho : integer)           : string;
function AcertaData   (dt: TDate)                                 : string;
function AcertaData2  (dt : TDate)                                : string ;
function AcertaValor  (Numero: extended; Tamanho,Decimal: integer): string;
function TiraAcentos  (Texto: string)                             : string;
function SoNumero     (Txt : string)                              : string;
function ValidarCEP   (const CEP: string)                         : string;
function TextoSemPonto(txt : string)                              : string;
function Alltrim      (Text : string)                             : string;
function Extenso      (vlr: Extended)                            : String;
function CaminhoDesktop(pasta : integer) : string ;

function ConsisteUF  (UF: ShortString)           : Boolean;
function TiraMascara (Text  : String)            : String;
function MaskCpfCnpj (sValor: String)            : String;
function MaskRgIE    (sValor: String)            : String;
function MaskCEP     (sValor: String)            : String;
function MaskData    (sEdit : string; sMascara: string) : string ;

function IsValidCPF(pCPF: string): Boolean;
function IsValidCNPJ(pCNPJ : string) : Boolean;
function IsValidEmail(const Value: string): Boolean;
function vercgc      (snrcgc:string)             : Boolean;
function vercpf      (snrcpf:string)             : Boolean;

Function ValidaData  (Dt : String; Msg: Boolean = True) : Boolean;
function Bissexto    (Ano : String)              : Boolean;
function IsDigit     (Campo : String)            : Boolean;
function IsCarac     (Campo : String)            : Boolean;
function OnlyDigit   (InString : String)         : String;
function OnlyCarac   (InString : String)         : String;

function ValidaFormataCurrency(pValor : string) : TFormataValor;
function ValorFormatadoFirebird(pValor:string) : string;

function QtdeConvertida(aCod: Integer; aSigla: string; aQtde: Extended): Extended;


{procedures}
procedure DimensionarGrid(dbGrid : TDBGrid) ;
procedure RemoveLinhasEmBranco(aLista : TStrings); //Memo

implementation

uses
  UDM, u_Mensagem, UDMACBr;


function QtdeConvertida(aCod: Integer; aSigla: string; aQtde: Extended): Extended;
const
  SQL = 'select P.CONV_UNIDADE, P.CONV_QTDE, P.CONV_PRECO '+
        'from PRODUTO P '+
        'where P.CODIGO = %s';
begin
  Result := aQtde;
  if (aCod < 1) then
    Exit;

  cdsConsulta := TClientDataSet.Create(nil);
  try
    cdsConsulta.Close;
    cdsConsulta.Data := DM.LerDataSet(Format(SQL, [aCod.ToString]));
    if (not cdsConsulta.IsEmpty) then
    begin
      Result := (aQtde * cdsConsulta.FieldByName('CONV_QTDE').AsFloat);
    end;
  finally
    FreeAndNil(cdsConsulta);
  end;
end;

function IsValidEmail(const Value: string): Boolean;

  function CheckAllowed(const s: string): Boolean;
  var
    i: Integer;
  begin
    Result := False;
    for i := 1 to Length(s) do
      if not (s[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '-', '.']) then
        Exit;
    Result := true;
  end;

var
  i: Integer;
  NamePart, ServerPart: string;
begin
  Result := False;
  i := Pos('@', Value);
  if i = 0 then
    Exit;
  NamePart := Copy(Value, 1, i - 1);
  ServerPart := Copy(Value, i + 1, Length(Value));
  if (Length(NamePart) = 0) or ((Length(ServerPart) < 5)) then
    Exit;
  i := Pos('.', ServerPart);
  if (i = 0) or (i > (Length(ServerPart) - 2)) then
    Exit;
  Result := CheckAllowed(NamePart) and CheckAllowed(ServerPart);
end;

function VoltaPrecoVenda(pCodProduto: integer): Currency;
var
  txt: string;
  tmp: TClientDataSet;
begin
  txt := 'select preco_venda from PRODUTO where codigo = ' + IntToStr(pCodProduto);
  tmp := TClientDataSet.Create(nil);
  try
    tmp.Close;
    tmp.Data := DM.LerDataSet(txt);
    Result := tmp.FieldByName('preco_venda').AsCurrency;
  finally
    FreeAndNil(tmp);
  end;
end;

function VoltaValor(num: extended; tam, dec: integer): string;
var
  tmp: string;
  x: integer;
begin
  tmp := '';
  for x := 1 to (tam - dec) do
    tmp := tmp + '0';
  if dec > 0 then
  begin
    tmp := tmp + '.';
    for x := 1 to dec do
      tmp := tmp + '0';
  end;

  Result := SoNumero(FormatFloat(tmp, num));
end;

function Arredondar(val : extended;dec : integer) : extended ;
var t : string ;
    x : smallint ;
begin
   for x := 1 to dec do
      t := t + '0' ;

   if dec > 0 then
      t := '0.' + t
   else
      t := '0' ;

   t := FormatFloat(t,val) ;

   Result := StrToFloat(t) ;
end ;

function GetValor(valor : string) : Extended;
var
  lValor: string;
begin
   {Ex: 3.207,59}
  lValor := StringReplace(valor,'.','',[rfReplaceAll]) ;
//  lValor := StringReplace(lvalor,',','.',[rfReplaceAll]) ;
  lValor := FormatFloat('0.##',StrToFloat(lValor));{remove casas decimais caso = ,00}
  Result := StrToFloatDef(lValor,0);
end;

function ValidaLimiteCredito(pIdCliente : string; pVl_Compra : Extended):Boolean ;
const
  SQL = 'select coalesce( (a.LIMITE_CREDITO - a.VL_DEBITO) ,0) limite '+
        'from CLIENTE a '+
        'where a.CODIGO = %s';
var
  lLimite: Extended;
begin
  Result := True ;

  lLimite := DM.GetFloat(Format(SQL,[pIdCliente]),'limite') ;
  if lLimite > 0 then
    if pVl_Compra > lLimite then
    begin
      Result := False;
      TMensagem.Informacao('Pagamento n„o pode ser realizado.' + #13#10 +
                 'Cliente tem limite de ' + FormatFloatBr(lLimite) +
                 ' para compras no Credi·rio. Se necess·rio alterar limite no cadastro do cliente.'
                  );
    end;
end;

function VoltaMes(m : integer) : string ;
begin
  Result := '         ' ;
  case m of
     1: Result := 'Janeiro  ' ;
     2: Result := 'Fevereiro' ;
     3: Result := 'Marco    ' ;
     4: Result := 'Abril    ' ;
     5: Result := 'Maio     ' ;
     6: Result := 'Junho    ' ;
     7: Result := 'Julho    ' ;
     8: Result := 'Agosto   ' ;
     9: Result := 'Setembro ' ;
    10: Result := 'Outubro  ' ;
    11: Result := 'Novembro ' ;
    12: Result := 'Dezembro ' ;
  end ;
end;

function AcertaTexto(txt: string; Tamanho: integer): string;
begin
  Result := Trim(txt) ;
  if (Length(Result) > Tamanho) then
  begin
    Result := Copy(Result,1,Tamanho) ;
    Exit ;
  end ;
  while Length(Result) < Tamanho do
    Result := Result + ' ' ;
end;

function AcertaData(dt: TDate): string;
begin
  Result := FormatDateTime('dd/mm/yyyy',dt) ;
end;

function AcertaData2  (dt : TDate) : string ;
begin
  if dt = 0 then
    Result := '00000000'
  else
    Result := FormatDateTime('yyyymmdd',dt) ;
end;

function AcertaValor(Numero: extended; Tamanho,
  Decimal: integer): string;
var x : integer ;
    Mascara : string ;
begin
  Result  := '' ;
  Mascara := '' ;
  For x := 1 to Tamanho - Decimal do
    Mascara := Mascara + '0' ;

  if Decimal > 0 then
  begin
    Mascara := Mascara + '.' ;
    For x := 1 to Decimal do
      Mascara := Mascara + '0' ;
  end ;

  Result := FormatFloat(Mascara,Numero) ;

  if Decimal > 0 then
  begin
    x := Pos(FormatSettings.DecimalSeparator,Result) ;
    if x > 0 then
      Result := Copy(Result,1,x-1)+Copy(Result,x+1,Decimal) ;
  end ;
end;

function TiraAcentos(Texto: string): string;
var
 Contar, Posicao: integer;
 Acentos, TiraAcentos: string;
begin
  Acentos     := '·‰‡„‚¡ƒ¿√¬ÈÎËÍ…À» ÌÔÏÓÕœÃŒÛˆÚıÙ”÷“’‘˙¸˘˚⁄‹Ÿ€Á«+';
  TiraAcentos := 'aaaaaAAAAAeeeeEEEEiiiiIIIIoooooOOOOOuuuuUUUUcC ';
  Result := '' ;

  for Contar := 1 to Length(Texto) do
  begin
   Posicao := Pos(Copy(Texto, Contar, 1), Acentos);
   if Posicao = 0 then
    Result := Result + Copy(Texto, Contar, 1)
   else
    Result := Result + Copy(TiraAcentos, Posicao, 1);
  end;
end;

function SoNumero(Txt: string): string;
var
  x: integer;
begin
  if Txt = '' then
  begin
    Result := '0';
    Exit;
  end;
  Result := '';
  for x := 0 to Length(Txt) do
  begin
    if Txt[x] in ['0'..'9'] then
      Result := Result + Txt[x];
  end;
  if Result = '' then
    Result := '0';
end;

function ValidarCEP(const CEP: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(CEP) do
    if CEP[I] in ['0'..'9'] then
      Result := Result + CEP[I];
    if Length(Result) <> 8 then
      raise Exception.Create('CEP inv·lido.')
    else
      Result := Copy(Result, 1, 2) + '.' + Copy(Result, 3, 3) + '-' + Copy(Result, 6, 3);
end;

function TextoSemPonto(txt : string) : string ;
begin
  txt := Trim(txt) ;
  if txt = '.' then
   Result := ''
  else
   Result := '/' + txt ;
end;

{Remover espaÁos em branco}
function Alltrim(Text : string) : string;
begin
  while Pos(' ', Text) > 0 do
    Delete(Text, Pos(' ', Text), 1);
  Result := Text;
end;

function Extenso(vlr: Extended): string;
const
  unidade: array[1..19] of string = ('um', 'dois', 'trÍs', 'quatro', 'cinco',
             'seis', 'sete', 'oito', 'nove', 'dez', 'onze',
             'doze', 'treze', 'quatorze', 'quinze', 'dezesseis',
             'dezessete', 'dezoito', 'dezenove');
  centena: array[1..9] of string = ('cento', 'duzentos', 'trezentos',
             'quatrocentos', 'quinhentos', 'seiscentos',
             'setecentos', 'oitocentos', 'novecentos');
  dezena: array[2..9] of string = ('vinte', 'trinta', 'quarenta', 'cinquenta',
             'sessenta', 'setenta', 'oitenta', 'noventa');
  qualificaS: array[0..4] of string = ('', 'mil', 'milh„o', 'bilh„o', 'trilh„o');
  qualificaP: array[0..4] of string = ('', 'mil', 'milhıes', 'bilhıes', 'trilhıes');
var
                        inteiro: Int64;
                          resto: real;
  vlrS, s, saux, vlrP, centavos: string;
     n, unid, dez, cent, tam, i: integer;
                    umReal, tem: boolean;
begin
  if (vlr = 0)
     then begin
            Extenso := 'zero';
            exit;
          end;

  inteiro := trunc(vlr); // parte inteira do valor
  resto := vlr - inteiro; // parte fracion·ria do valor
  vlrS := inttostr(inteiro);
  if (length(vlrS) > 15)
     then begin
            Extenso := 'Erro: valor superior a 999 trilhıes.';
            exit;
          end;

  s := '';
  centavos := inttostr(round(resto * 100));

// definindo o extenso da parte inteira do valor
  i := 0;
  umReal := false; tem := false;
  while (vlrS <> '0') do
  begin
    tam := length(vlrS);
// retira do valor a 1a. parte, 2a. parte, por exemplo, para 123456789:
// 1a. parte = 789 (centena)
// 2a. parte = 456 (mil)
// 3a. parte = 123 (milhıes)
    if (tam > 3)
       then begin
              vlrP := copy(vlrS, tam-2, tam);
              vlrS := copy(vlrS, 1, tam-3);
            end
    else begin // ˙ltima parte do valor
           vlrP := vlrS;
           vlrS := '0';
         end;
    if (vlrP <> '000')
       then begin
              saux := '';
              if (vlrP = '100')
                 then saux := 'cem'
              else begin
                     n := strtoint(vlrP);        // para n = 371, tem-se:
                     cent := n div 100;          // cent = 3 (centena trezentos)
                     dez := (n mod 100) div 10;  // dez  = 7 (dezena setenta)
                     unid := (n mod 100) mod 10; // unid = 1 (unidade um)
                     if (cent <> 0)
                        then saux := centena[cent];
                     if ((dez <> 0) or (unid <> 0))
                        then begin
                               if ((n mod 100) <= 19)
                                  then begin
                                         if (length(saux) <> 0)
                                            then saux := saux + ' e ' + unidade[n mod 100]
                                         else saux := unidade[n mod 100];
                                       end
                               else begin
                                      if (length(saux) <> 0)
                                         then saux := saux + ' e ' + dezena[dez]
                                      else saux := dezena[dez];
                                      if (unid <> 0)
                                         then if (length(saux) <> 0)
                                                 then saux := saux + ' e ' + unidade[unid]
                                              else saux := unidade[unid];
                                    end;
                          end;
                   end;
              if ((vlrP = '1') or (vlrP = '001'))
                 then begin
                        if (i = 0) // 1a. parte do valor (um real)
                           then umReal := true
                        else saux := saux + ' ' + qualificaS[i];
                      end
              else if (i <> 0)
                      then saux := saux + ' ' + qualificaP[i];
              if (length(s) <> 0)
                 then s := saux + ', ' + s
              else s := saux;
            end;
    if (((i = 0) or (i = 1)) and (length(s) <> 0))
       then tem := true; // tem centena ou mil no valor
    i := i + 1; // prÛximo qualificador: 1- mil, 2- milh„o, 3- bilh„o, ...
  end;

  if (length(s) <> 0)
     then begin
            if (umReal)
               then s := s + ' real'
            else if (tem)
                    then s := s + ' reais'
                 else s := s + ' de reais';
          end;
// definindo o extenso dos centavos do valor
  if (centavos <> '0') // valor com centavos
     then begin
            if (length(s) <> 0) // se n„o È valor somente com centavos
               then s := s + ' e ';
            if (centavos = '1')
               then s := s + 'um centavo'
            else begin
                   n := strtoint(centavos);
                   if (n <= 19)
                      then s := s + unidade[n]
                   else begin                 // para n = 37, tem-se:
                          unid := n mod 10;   // unid = 37 % 10 = 7 (unidade sete)
                          dez := n div 10;    // dez  = 37 / 10 = 3 (dezena trinta)
                          s := s + dezena[dez];
                          if (unid <> 0)
                             then s := s + ' e ' + unidade[unid];
                       end;
                   s := s + ' centavos';
                 end;
          end;
  Extenso := s;
end;

function CaminhoDesktop(pasta : integer) : string ;
var
   FilePath: array [0..MAX_PATH] of char;
begin
  SHGetFolderPath(0, pasta, 0, 0, FilePath);
  Result := FilePath;
end;

// Consiste existÍncia de UF
function ConsisteUF(UF: ShortString): Boolean;
const
  EstadosUniao: array[1..27] of string[2] =
    ( 'MG','SP','RJ','AL','AM','BA','DF','MS','MT',
    'TO','AC','MA','RO','RR','PE','RS','PA','PB',
    'CE','GO','SC','ES','AP','PI','RN','SE','PR' );
var
  i: Byte;
begin
  Result := False;
  if UF = '' then Exit;
  UF := UpperCase(UF);
  for i := Low(EstadosUniao) to High(EstadosUniao) do
    if EstadosUniao[i] = UF then begin
      Result := True;
      Break;
    end;
end;

//Tira a Mascara
function TiraMascara(Text: String): String;
var Aux: String;
    I  : Integer;
begin
  Aux:= '';
  For I:= 1 to Length(Text) do begin
    If (Copy (Text, I, 1) <> '.') and
       (Copy (Text, I, 1) <> ' ') and
       (Copy (Text, I, 1) <> '-') and
       (Copy (Text, I, 1) <> '/') and
       (Copy (Text, I, 1) <> '\') and
       (Copy (Text, I, 1) <> '(') and
       (Copy (Text, I, 1) <> ')') Then
       Aux := Aux + Copy (Text, I, 1);
  end;
  Result:= Aux;
end;

Function MaskCpfCnpj(sValor: string): String;
var
  sDoc: string;
Begin
  sDoc := Tiramascara( sValor );
  if      Length(sDoc) = 11 then                                      ///Cpf
     Result := Copy(sDoc,1,3)+ '.' +
               Copy(sDoc,4,3)+ '.' +
               Copy(sDoc,7,3)+ '-' +
               Copy(sDoc,10,2)
  else if Length(sDoc) = 14 then                                     ///Cnpj
     Result := Copy(sDoc,01,2)+ '.' +
               Copy(sDoc,03,3)+ '.' +
               Copy(sDoc,06,3)+ '/' +
               Copy(sDoc,09,4)+ '-' +
               Copy(sDoc,13,2)
  else Result := sValor;
end;

Function MaskRgIE    (sValor: String) : String;
var
  sDoc: string;
Begin
  sDoc := Tiramascara( sValor );
  if Length(sDoc) = 07 then sDoc := '0'+sDoc;
  if Length(sDoc) = 08 then                                                  ///Rg
     Result := Copy(sDoc,1,2)+ '.' +
               Copy(sDoc,3,3)+ '.' +
               Copy(sDoc,6,3)
  else if Length(sDoc) = 09 then                                             ///Rg
     Result := Copy(sDoc,1,2)+ '.' +
               Copy(sDoc,3,3)+ '.' +
               Copy(sDoc,6,3)+ '-' +
               Copy(sDoc,9,1)
  Else if Length(sDoc) = 12 then                                             ///Ie
     Result := Copy(sDoc,01,3)+ '.' +
               Copy(sDoc,04,3)+ '.' +
               Copy(sDoc,07,3)+ '.' +
               Copy(sDoc,10,3)
  Else if Length(sDoc) = 14 then                                             ///Ie
      Result := Copy(sDoc,01,3)+ '.' +
                Copy(sDoc,04,3)+ '.' +
                Copy(sDoc,07,3)+ '.' +
                Copy(sDoc,10,3)+ '-' +
                Copy(sDoc,13,2)
  Else Result := sValor;
end;

function MaskCEP (sValor: String) : String;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(sValor) do
    if sValor[I] in ['0'..'9'] then
      Result := Result + sValor[I];
  if Length(Result) <> 8 then
    raise Exception.Create('CEP inv·lido.')
  else
    Result := Copy(Result, 1, 2) + '.' + Copy(Result, 3, 3) + '-' + Copy(Result, 6, 3);
end;

function MaskData (sEdit : string; sMascara: string) : string ;
var
  i : integer;
begin
  for i := 1 to Length(sEdit) do
  begin
     if (sMascara[i] = '9') and not (sEdit[i] in ['0'..'9']) and (Length(sEdit)=Length(sMascara)+1) then
        delete(sEdit,i,1);
     if (sMascara[i] <> '9') and (sEdit[i] in ['0'..'9']) then
        insert(sMascara[i],sEdit, i);
  end;
  result := sEdit;
end;

{$WARNINGS OFF}
Function vercgc(snrcgc:string):Boolean;
VAR
   WCGCCALC : STRING;
   WSOMACGC : INTEGER;
   WSX1     : SHORTINT;
   WCGCDIGT : INTEGER;
begin
  snrcgc := OnlyDigit(snrcgc);
  if (snrCGC <> '  .   .   /    -') and (snrCGC <> '') then BEGIN
        try
         wCgcCalc := Copy(snrcgc,1,12);
         WSOMACGC := 0;
         {-----------------------------}
         for wsx1:= 1 to 4 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1, 1)) * (6 - wsx1);
         for wsx1:= 1 to 8 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1 + 4, 1)) * (10 - wsx1);
         wcgcdigt:= 11 - wsomacgc mod 11;
         if wcgcdigt in [10,11] then
             BEGIN
               wcgccalc:= wcgccalc + '0';
             END
         else
             BEGIN
               wcgccalc := wcgccalc +  inttoStr(wcgcdigt);
             END;
         {---------------------------------}
         wsomacgc:= 0;
         for wsx1:= 1 to 5 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1, 1)) * (7 - wsx1);
         for wsx1:= 1 to 8 do
              wsomacgc:= wsomacgc + strtoint(copy(wcgccalc, wsx1 + 5, 1)) * (10 - wsx1);
         wcgcdigt:= 11 - wsomacgc mod 11;
         if wcgcdigt in [10,11] then
             BEGIN
               wcgccalc:= wcgccalc + '0';
             END
         else
             BEGIN
               wcgccalc := wcgccalc +  inttoStr(wcgcdigt);
             END;
         if  snrcgc <> wcgccalc then
           begin
             TMensagem.Atencao('C.N.P.J. Inv·lido !');
              //application.messagebox('C.G.C. Inv·lido !','AtenÁ„o!',mb_iconstop+mb_ok);
              vercgc := false ;
           end
         else
              vercgc := true ;
        except on econverterror do
        begin
          MessageDlg('Valor informado n„o È v·lido !',mtwarning,[mbok],0);
          //application.messagebox('Valor informado n„o È v·lido !','AtenÁ„o!',mb_iconstop+mb_ok);
          vercgc := false;
        end
        end
     END
end;
{$WARNINGS ON}

{$WARNINGS OFF}
Function vercpf(snrcpf:string):Boolean;
VAR
   WCPFCALC : STRING;
   WSOMACPF : INTEGER;
   WSX1     : SHORTINT;
   WCPFDIGT : INTEGER;
begin
 snrCpf := OnlyDigit(snrCpf);
 if (snrcpf <> '   .   .   -  ') and (snrcpf <> '') then Begin
        try
        wcpfcalc := copy(snrCpf, 1, 9);
        wsomacpf := 0;
        for wsx1:= 1 to 9 do
             wsomacpf := wsomacpf + strtoint(copy(wcpfcalc, wsx1, 1)) * (11 - wsx1);
        wcpfdigt:= 11 - wsomacpf mod 11;
        if wcpfdigt in [10,11] then wcpfcalc:= wcpfcalc + '0'
        else                        wcpfcalc := wcpfcalc +  inttoStr(wcpfdigt);
        wsomacpf:= 0;
        for wsx1:= 1 to 10 do
             wsomacpf := wsomacpf + strtoint(copy(wcpfcalc, wsx1, 1)) * (12 - wsx1);
        wcpfdigt:= 11 - wsomacpf mod 11;
        if wcpfdigt in [10,11] then wcpfcalc:= wcpfcalc + '0'
        else                        wcpfcalc := wcpfcalc +  inttoStr(wcpfdigt);
        if  snrcpf <> wcpfcalc then begin
             TMensagem.Atencao('C.P.F. Inv·lido !');
             vercpf := false;
           end
        else
             vercpf := true;
        except on econverterror do begin
             TMensagem.Atencao('Valor informado n„o È v·lido !');
             vercpf := false;
        end
        end
    END
end;
{$WARNINGS ON}

function IsValidCPF(pCPF: string): Boolean;
var
  v: array [0 .. 1] of Word;
  cpf: array [0 .. 10] of Byte;
  I: Byte;
begin
  Result := False;

  { Verificando se tem 11 caracteres }
  if Length(pCPF) <> 11 then
  begin
    Exit;
  end;

  { Conferindo se todos dÌgitos s„o iguais }
  if pCPF = StringOfChar('0', 11) then
    Exit;

  if pCPF = StringOfChar('1', 11) then
    Exit;

  if pCPF = StringOfChar('2', 11) then
    Exit;

  if pCPF = StringOfChar('3', 11) then
    Exit;

  if pCPF = StringOfChar('4', 11) then
    Exit;

  if pCPF = StringOfChar('5', 11) then
    Exit;

  if pCPF = StringOfChar('6', 11) then
    Exit;

  if pCPF = StringOfChar('7', 11) then
    Exit;

  if pCPF = StringOfChar('8', 11) then
    Exit;

  if pCPF = StringOfChar('9', 11) then
    Exit;

  try
    for I := 1 to 11 do
      cpf[I - 1] := StrToInt(pCPF[I]);
    // Nota: Calcula o primeiro dÌgito de verificaÁ„o.
    v[0] := 10 * cpf[0] + 9 * cpf[1] + 8 * cpf[2];
    v[0] := v[0] + 7 * cpf[3] + 6 * cpf[4] + 5 * cpf[5];
    v[0] := v[0] + 4 * cpf[6] + 3 * cpf[7] + 2 * cpf[8];
    v[0] := 11 - v[0] mod 11;
    v[0] := IfThen(v[0] >= 10, 0, v[0]);
    // Nota: Calcula o segundo dÌgito de verificaÁ„o.
    v[1] := 11 * cpf[0] + 10 * cpf[1] + 9 * cpf[2];
    v[1] := v[1] + 8 * cpf[3] + 7 * cpf[4] + 6 * cpf[5];
    v[1] := v[1] + 5 * cpf[6] + 4 * cpf[7] + 3 * cpf[8];
    v[1] := v[1] + 2 * v[0];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);
    // Nota: Verdadeiro se os dÌgitos de verificaÁ„o s„o os esperados.
    Result := ((v[0] = cpf[9]) and (v[1] = cpf[10]));
  except
    on E: Exception do
      Result := False;
  end;
end;

function IsValidCNPJ(pCNPJ : string) : Boolean;
var
  v: array[1..2] of Word;
  cnpj: array[1..14] of Byte;
  I: Byte;
begin
  Result := False;

  { Verificando se tem 14 caracteres }
  if Length(pCNPJ) <> 14 then
  begin
    Exit;
  end;

  { Conferindo se todos dÌgitos s„o iguais }
  if pCNPJ = StringOfChar('0', 14) then
    Exit;

  if pCNPJ = StringOfChar('1', 14) then
    Exit;

  if pCNPJ = StringOfChar('2', 14) then
    Exit;

  if pCNPJ = StringOfChar('3', 14) then
    Exit;

  if pCNPJ = StringOfChar('4', 14) then
    Exit;

  if pCNPJ = StringOfChar('5', 14) then
    Exit;

  if pCNPJ = StringOfChar('6', 14) then
    Exit;

  if pCNPJ = StringOfChar('7', 14) then
    Exit;

  if pCNPJ = StringOfChar('8', 14) then
    Exit;

  if pCNPJ = StringOfChar('9', 14) then
    Exit;

  try
    for I := 1 to 14 do
      cnpj[i] := StrToInt(pCNPJ[i]);

    //Nota: Calcula o primeiro dÌgito de verificaÁ„o.
    v[1] := 5*cnpj[1] + 4*cnpj[2]  + 3*cnpj[3]  + 2*cnpj[4];
    v[1] := v[1] + 9*cnpj[5] + 8*cnpj[6]  + 7*cnpj[7]  + 6*cnpj[8];
    v[1] := v[1] + 5*cnpj[9] + 4*cnpj[10] + 3*cnpj[11] + 2*cnpj[12];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);

    //Nota: Calcula o segundo dÌgito de verificaÁ„o.
    v[2] := 6*cnpj[1] + 5*cnpj[2]  + 4*cnpj[3]  + 3*cnpj[4];
    v[2] := v[2] + 2*cnpj[5] + 9*cnpj[6]  + 8*cnpj[7]  + 7*cnpj[8];
    v[2] := v[2] + 6*cnpj[9] + 5*cnpj[10] + 4*cnpj[11] + 3*cnpj[12];
    v[2] := v[2] + 2*v[1];
    v[2] := 11 - v[2] mod 11;
    v[2] := IfThen(v[2] >= 10, 0, v[2]);

    //Nota: Verdadeiro se os dÌgitos de verificaÁ„o s„o os esperados.
    Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
  except on E: Exception do
    Result := False;
  end;
end;

{Verifica se uma data È v·lida }
function ValidaData(Dt: string; Msg: Boolean = True): Boolean;
var
  Dia, Mes: string[2];
  Ano: string[4];
begin
  Dia := Copy(Dt, 1, 2);
  Mes := Copy(Dt, 4, 2);

  if Length(OnlyDigit(Dt)) = 6 then
    Ano := '00' + Copy(Dt, 7, 2)
  else
    Ano := Copy(Dt, 7, 4);

  Result := True;

  if (Pos(Mes, '01,02,03,04,05,06,07,08,09,10,11,12') = 0) or
  ((Pos(Mes, '01,03,05,07,08,10,12') > 0) and ((Dia < '01') or (Dia > '31'))) or
  ((Pos(Mes, '04,06,09,11') > 0) and ((Dia < '01') or (Dia > '30'))) then
    Result := False;

  if Mes = '02' then
  begin
    if (Ano < '00') or (Ano > '99') then
      Result := False
    else if (StrToInt(Ano) mod 4 > 0) and (Dia > '28') then
      Result := False;
  end;

  if Trim(Dia + Mes + Ano) = '' then
    Result := True
  else if Pos(' ', Dia + Mes + Ano) > 0 then
    Result := False;

  if (Dt = '__/__/__') or (Dt = '__/__/____') then
    Result := True;

  if (Result = False) and (Msg) then
    ShowMessage('Data Inv·lida');
end;


{Verifica se um ano como string È bissexto}
{Qualquer ano < 20 ser· considerado como 2000 + ano}
function Bissexto(Ano: string): Boolean;
var
  Numero: Integer;
begin
  Numero := StrToInt(Ano);

  if Numero < 100 then
  begin
    if Numero < 20 then
      Numero := 2000 + Numero
    else
      Numero := 1900 + Numero;
  end;

  if (Numero div 4) = (Numero / 4) then
    Bissexto := True
  else
    Bissexto := False;
end;

{Retorna True se Campo estiver entre 0..9}
function IsDigit(Campo: string): Boolean;
begin
  if Pos(Campo, '0123456789') > 0 then
    IsDigit := True
  else
    IsDigit := False;
end;


{Retorna True se Campo estiver entre A..z}
function IsCarac(Campo: string): Boolean;
begin
  if Pos(Campo, ' ABCDEFGHIJKLMNOPQRSTUVXYWZabcdefghijklmnopqrstuvxywz') > 0 then
    IsCarac := True
  else
    IsCarac := False;
end;

{Retorna somente digitos (0..9) de um string}
Function OnlyDigit(InString : String) : String;
var
  i: Integer;
  Tmp: string;
begin
   Tmp := '';

   for i := 1 to Length(InString) do
    if IsDigit(InString[i]) then
     Tmp := Tmp + InString[i];

   OnlyDigit := Tmp;
end;

{Retorna somente digitos (A..z) de um string}
Function OnlyCarac(InString : String) : String;
var
  i: Integer;
  Tmp: string;
begin
   Tmp := '';

   for i := 1 to Length(InString) do
    if (IsCarac(InString[i])) or (IsDigit(InString[i])) then
     Tmp := Tmp + InString[i]
    else
     Tmp := Tmp + ' ';

   InString := Tmp; Tmp := '';

   for i := 1 to Length(InString) do
    if Pos(Copy(InString, i, 1), '0123456789') = 0 then
     Tmp := Tmp + Copy(InString, i, 1);

   Tmp := Tmp + ' ';
   OnlyCarac := Tmp;
end;

{procedures}

procedure DimensionarGrid(dbGrid : TDBGrid) ;
type
  TArray = Array of Integer;
  procedure AjustarColumns(Swidth, TSize: Integer; Asize: TArray);
  var
    idx: Integer;
  begin
    if TSize = 0 then
    begin
      TSize := dbGrid.Columns.count;
      for idx := 0 to dbGrid.Columns.count - 1 do
        dbGrid.Columns[idx].Width := (dbGrid.Width - dbGrid.Canvas.TextWidth('AAAAAA')
          ) div TSize
    end
    else
      for idx := 0 to dbGrid.Columns.count - 1 do
        dbGrid.Columns[idx].Width := dbGrid.Columns[idx].Width +
          (Swidth * Asize[idx] div TSize);
  end;

var
  idx, Twidth, TSize, Swidth: Integer;
  AWidth: TArray;
  Asize: TArray;
  NomeColuna: String;
begin
  SetLength(AWidth, dbGrid.Columns.count);
  SetLength(Asize, dbGrid.Columns.count);
  Twidth := 0;
  TSize := 0;
  for idx := 0 to dbGrid.Columns.count - 1 do
  begin
    NomeColuna := dbGrid.Columns[idx].Title.Caption;
    dbGrid.Columns[idx].Width := dbGrid.Canvas.TextWidth
      (dbGrid.Columns[idx].Title.Caption + 'A');
    AWidth[idx] := dbGrid.Columns[idx].Width;
    Twidth := Twidth + AWidth[idx];

    if Assigned(dbGrid.Columns[idx].Field) then
      Asize[idx] := dbGrid.Columns[idx].Field.Size
    else
      Asize[idx] := 1;

    TSize := TSize + Asize[idx];
  end;
  if TDBGridOption.dgColLines in dbGrid.Options then
    Twidth := Twidth + dbGrid.Columns.count;

  // adiciona a largura da coluna indicada do cursor
  if TDBGridOption.dgIndicator in dbGrid.Options then
    Twidth := Twidth + IndicatorWidth;

  Swidth := dbGrid.ClientWidth - Twidth;
  AjustarColumns(Swidth, TSize, Asize);
end;

procedure RemoveLinhasEmBranco(aLista : TStrings);
var
  i: integer;
begin
  for i := aLista.Count downto 0 do
    if (Trim(aLista[i]) = '') then
    begin
      aLista.Delete(i);
    end;
end;


function CaixaFechado() : TCaixa ;
const
  SQL = 'select a.ID IDCAIXA, a.ABERTO_FECHADO status ' +
        'from CAIXA a ' +
        'left outer join CAIXA_ABERT_FECH b on (b.ID_CAIXA = a.ID) ' +
        'where a.ABERTO_FECHADO = ''A'' '+
        'and cast(b.DT_HORA_ABERT_FECH as date) = %s';
begin
{$REGION 'Trecho Producao'}
  Result.Fechado := False ;
  Result.ID := 0;

  DM.dsConsulta.Close ;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[QuotedStr(FormatDateTime('dd.mm.yyyy',Now))])) ;

  if DM.dsConsulta.IsEmpty then
  begin
    Result.Fechado := True ;
    Exit ;
  end
  else if DM.dsConsulta.FieldByName('status').AsString = 'F' then
  begin
    Result.Fechado := True ;
    Exit ;
  end;

  Result.ID := DM.dsConsulta.FieldByName('IDCAIXA').AsInteger ;
{$ENDREGION}

{$REGION 'Trecho teste'}
//  Result.Fechado := False;
//  Result.ID := 280;
{$ENDREGION}
end;

function ValorFormatadoFirebird(pValor:string) : string;
var
  lValor: Currency;
  lVl : string;
begin
  if pValor = '' then
  begin
    TMensagem.Atencao('Valor n„o informado.');
    Result := '0';
    Exit;
  end;

  lVl := StringReplace(pValor,'.','',[rfReplaceAll]); {trata milhar}
//  lVl := StringReplace(lVl,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);{troca sepadarador de decimal}

//  FormatSettings.DecimalSeparator := '.';
  if TryStrToCurr(lVl,lValor) then
  begin
    Result := StringReplace(lVl,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);{troca sepadarador de decimal}
  end
  else
  begin
    TMensagem.Atencao('Valor inv·lido.');
    Result := '0';
  end;
end;

function ValidaFormataCurrency(pValor: string): TFormataValor;
var
  s: string;
  f: Double;
begin
  s := StringReplace(pValor,'.','',[rfReplaceAll]);
  if TryStrToFloat(s, f) then
  begin
    Result.Retorno := 'sucesso';
    Result.VlString := FormatFloat('##0.00', f);
    Result.vlFloat := f;
  end
  else
  begin
    Result.Retorno := 'erro';
    Result.VlString := FormatFloat('##0.00', 0);
    Result.vlFloat := 0;
    TMensagem.Erro('Valor inv·lido');
  end;
end;

end.
