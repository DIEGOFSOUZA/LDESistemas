unit UConsulta;

interface

uses System.SysUtils, System.Variants, System.Classes ;

type
  TRetornoProduto = record
    iCodigo: integer;
    Descricao: string;
    cPreco: Currency;
    sUM, sUM_Conv: string;
    PrecoCusto: Currency;
  end;

type
  TRetornoFabricante = record
    iCodigo: integer;
    cNome: string;
  end;

type
  TRetornoUnidade = record
    Codigo: integer;
    Sigla: string;
  end;

type
  TRetornoLote = record
    ID: integer;
    LOTE: string;
  end;

type
  TRetornoVenda = record
    Tipo: string ;
    ID : integer ;
  end;

type
  TCheque = record
    ID_Banco: string ;
    NCheque : integer ;
  end;

type
  Consulta = class
  private

  public
   class function Empresa : integer ;
   class function Cidades : integer ;
   class function Estado : string ;
   class function Pais : integer ;
   class function Funcionario : integer ;
   class function Usuario : Integer;
   class function Vendedor : integer ;

   class function OrdemProducao : integer;

   {*****Cliente****************}
   class function Ramo_Atividade : integer ;
   class function Cliente : integer ;
   class function Prazo_pagamento : integer;

   {*****Representante****************}
   class function Representante : integer ;

   {****Fornecedores******}
   class function Grupo_Fornecedor : integer;
   class function Fornecedor : integer;

   {******Transportadora********}
   class function Transportadora : integer;

   {*****Produto********}
   class function Produto(pTipo : string = ''; pTituloConsulta : string = '') : TRetornoProduto;
   class function Unidade : TRetornoUnidade;
   class function Fabricante: TRetornoFabricante;
   class function NCM : integer;
   class function CEST : integer;
   class function Grupo_Produto : integer;
   class function SubGrupo_Produto : integer;
   class function Lote(aTipoLote: string = ''): TRetornoLote;
   class function Servico: integer;

   {*******NF********************}
   class function NfeMsgAdic : integer;
   class function NfeConfigFiscal : integer;
   class function CFOP : string;
   class function NfeCenario : integer;
   class function NaOperacao : integer;
   class function Pedido: integer;

   class function NF_ENTRADA: integer;

   {Financeiro - Contas a Receber}
   class function CondPagto : Integer ;
   class function CondicoesPagto : Integer ;

   {Financeiro - Contas a Pagar}
   class function Historico(aIdGrupo: integer = -1; aDescri: string = ''): Integer;
   class function Historico_Grupo : Integer ;
   class function ContaBancaria : string ;
   class function Cheque : TCheque ;

   {*******PDV***********}
   class function Venda : TRetornoVenda;
  end;

implementation

{ Consulta }

uses UPdr_Consulta, UDM;



class function Consulta.Cliente: integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin

  InstrucaoSQL := 'select A.CODIGO,A.NOME_RAZAO,A.FANTASIA,'+
                  'A.CPF_CNPJ,A.RG_INSC,A.CIDADE '+
                  'from CLIENTE a ' ;
  SetLength(mCampos,6);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Nome/Razão Social' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'nome_razao' ;
  mCampos[1].NomeSQL   := 'nome_razao' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Fantasia' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'fantasia' ;
  mCampos[2].NomeSQL   := 'fantasia' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'CPF/CNPJ' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'cpf_cnpj' ;
  mCampos[3].NomeSQL   := 'cpf_cnpj' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;

  mCampos[4].Descricao := 'RG/Insc. Estadual' ;
  mCampos[4].Mascara   := '' ;
  mCampos[4].Mostrar   := True ;
  mCampos[4].Nome      := 'rg_insc' ;
  mCampos[4].NomeSQL   := 'rg_insc' ;
  mCampos[4].Pesquisa  := True ;
  mCampos[4].Retorno   := False ;

  mCampos[5].Descricao := 'Cidade' ;
  mCampos[5].Mascara   := '' ;
  mCampos[5].Mostrar   := True ;
  mCampos[5].Nome      := 'cidade' ;
  mCampos[5].NomeSQL   := 'cidade' ;
  mCampos[5].Pesquisa  := True ;
  mCampos[5].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Clientes',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Representante: integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin

  InstrucaoSQL := 'SELECT a.SITUACAO, a.CODIGO, a.CPF, a.RG, a.NOME, a.CIDADE '+
                  'FROM REPRESENTANTE a ' ;
  SetLength(mCampos,6);

  mCampos[0].Descricao := 'Situação' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'situacao' ;
  mCampos[0].NomeSQL   := 'situacao' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := False ;
  mCampos[0].Width     := 70 ;

  mCampos[1].Descricao := 'Código' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := False ;
  mCampos[1].Nome      := 'codigo' ;
  mCampos[1].NomeSQL   := 'codigo' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := True ;

  mCampos[2].Descricao := 'Nome' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'nome' ;
  mCampos[2].NomeSQL   := 'nome' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;
  mCampos[2].Width     := 200 ;

  mCampos[3].Descricao := 'CPF' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'cpf' ;
  mCampos[3].NomeSQL   := 'cpf' ;
  mCampos[3].Pesquisa  := False ;
  mCampos[3].Retorno   := False ;

  mCampos[4].Descricao := 'RG' ;
  mCampos[4].Mascara   := '' ;
  mCampos[4].Mostrar   := True ;
  mCampos[4].Nome      := 'rg' ;
  mCampos[4].NomeSQL   := 'rg' ;
  mCampos[4].Pesquisa  := False ;
  mCampos[4].Retorno   := False ;

  mCampos[5].Descricao := 'Cidade' ;
  mCampos[5].Mascara   := '' ;
  mCampos[5].Mostrar   := True ;
  mCampos[5].Nome      := 'cidade' ;
  mCampos[5].NomeSQL   := 'cidade' ;
  mCampos[5].Pesquisa  := False ;
  mCampos[5].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Representante',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,4);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.CondicoesPagto: Integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'SELECT a.ID_PAGTOFORMA, a.DESCRI FROM PAGTO_FORMA a' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'ID' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'ID_PAGTOFORMA' ;
  mCampos[0].NomeSQL   := 'ID_PAGTOFORMA' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Descrição' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descri' ;
  mCampos[1].NomeSQL   := 'descri' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;
//  mCampos[1].Width     := 210 ;

  Aux := TPdr_Consulta.Create(nil,'TIPOS DE PAGAMENTO',InstrucaoSQL,'ID_PAGTOFORMA',
          mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['ID_PAGTOFORMA'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.CondPagto: Integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'SELECT a.CODIGO, a.DIAS, a.ATIVO, a.PERCENT_ACRESCIMO FROM CONDPAGTO a' ;
  SetLength(mCampos,4);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Dias' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'dias' ;
  mCampos[1].NomeSQL   := 'dias' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;
  mCampos[1].Width     := 210 ;

  mCampos[2].Descricao := 'Ativo/Inativo' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'ativo' ;
  mCampos[2].NomeSQL   := 'ativo' ;
  mCampos[2].Pesquisa  := False ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'Percentual de Acréscimo' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'percent_acrescimo' ;
  mCampos[3].NomeSQL   := 'percent_acrescimo' ;
  mCampos[3].Pesquisa  := False ;
  mCampos[3].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Condição de Pagamento',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Empresa: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,cnpj,razao,fantasia from EMPRESA' ;
  SetLength(mCampos,4);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'CNPJ' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'cnpj' ;
  mCampos[1].NomeSQL   := 'cnpj' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Razão Social' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'razao' ;
  mCampos[2].NomeSQL   := 'razao' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'Nome Fantasia' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'fantasia' ;
  mCampos[3].NomeSQL   := 'fantasia' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;



  Aux := TPdr_Consulta.Create(nil,'Consulta de Empresa',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Estado: string;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    Campos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select sigla,nome from ESTADO' ;
  SetLength(Campos,2);
  Campos[0].Descricao := 'UF' ;
  Campos[0].Mascara   := '' ;
  Campos[0].Mostrar   := True ;
  Campos[0].Nome      := 'sigla' ;
  Campos[0].NomeSQL   := 'sigla' ;
  Campos[0].Pesquisa  := True ;
  Campos[0].Retorno   := True ;

  Campos[1].Descricao := 'Estado' ;
  Campos[1].Mascara   := '' ;
  Campos[1].Mostrar   := True ;
  Campos[1].Nome      := 'nome' ;
  Campos[1].NomeSQL   := 'nome' ;
  Campos[1].Pesquisa  := True ;
  Campos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Estados',InstrucaoSQL,'',
          Campos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := Aux.Retorno.Values['sigla'] ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Fabricante: TRetornoFabricante;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,razao_nome,fantasia,'+
                  'cnpj CNPJ '+
                  'from FABRICANTE ' ;
  SetLength(mCampos,4);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Razão Social' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'razao_nome' ;
  mCampos[1].NomeSQL   := 'razao_nome' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Fantasia' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'fantasia' ;
  mCampos[2].NomeSQL   := 'fantasia' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'CNPJ' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'CNPJ' ;
  mCampos[3].NomeSQL   := 'CNPJ' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;

Aux := TPdr_Consulta.Create(nil,'Consulta de Fornecedores',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result.iCodigo := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
    Result.cNome  := Aux.Retorno.Values['razao_nome'] ;
  finally
    FreeAndNil(Aux);
  end;

end;

class function Consulta.Fornecedor: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'SELECT r.CODIGO, r.CPF_CNPJ, r.RAZAO_NOME '+
                  'FROM FABRICANTE r' ;
  SetLength(mCampos,3);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'CPF/CNPJ' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'cpf_cnpj' ;
  mCampos[1].NomeSQL   := 'cpf_cnpj' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Razão social/Nome' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'RAZAO_NOME' ;
  mCampos[2].NomeSQL   := 'RAZAO_NOME' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Fornecedor',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,2);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Funcionario: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,nome,setor from FUNCIONARIO' ;
  SetLength(mCampos,3);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Funcionário' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'nome' ;
  mCampos[1].NomeSQL   := 'nome' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Setor' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'setor' ;
  mCampos[2].NomeSQL   := 'setor' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;


  Aux := TPdr_Consulta.Create(nil,'Consulta de Funcionários',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Vendedor: integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'select USU_ID codigo,USU_NOME nome,id_vendedor from USUARIO where vendedor = ''Sim'' ';
  SetLength(mCampos, 3);

  mCampos[0].Descricao := 'Código';
  mCampos[0].Mascara := '';
  mCampos[0].Mostrar := True;
  mCampos[0].Nome := 'codigo';
  mCampos[0].NomeSQL := 'USU_ID';
  mCampos[0].Pesquisa := True;
  mCampos[0].Retorno := False;

  mCampos[1].Descricao := 'Usuário';
  mCampos[1].Mascara := '';
  mCampos[1].Mostrar := True;
  mCampos[1].Nome := 'nome';
  mCampos[1].NomeSQL := 'USU_NOME';
  mCampos[1].Pesquisa := True;
  mCampos[1].Retorno := False;

  mCampos[2].Descricao := 'Código de vendedor(a)';
  mCampos[2].Mascara := '';
  mCampos[2].Mostrar := True;
  mCampos[2].Nome := 'id_vendedor';
  mCampos[2].NomeSQL := 'id_vendedor';
  mCampos[2].Pesquisa := True;
  mCampos[2].Retorno := True;

  Aux := TPdr_Consulta.Create(nil, 'Consulta de Vendedores', InstrucaoSQL, '', mCampos, DM.LerDataSet, 1);
  try
    Aux.ShowModal;
    Result := StrToIntDef(Aux.Retorno.Values['id_vendedor'], 0);
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Grupo_Fornecedor: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,descri from GRUPO_FABRICANTE' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Descrição' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descri' ;
  mCampos[1].NomeSQL   := 'descri' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Grupos de Fornecedor',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Grupo_Produto: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,descri from GRUPO_PROD' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Descrição' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descri' ;
  mCampos[1].NomeSQL   := 'descri' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Grupo de Produto',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Lote(aTipoLote: string): TRetornoLote;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'SELECT ID,LOTE,EMISSAO,STATUS FROM LOTE ';
  if (aTipoLote <> '') then
    InstrucaoSQL := InstrucaoSQL+' WHERE LOTE_ACERTO = '+QuotedStr(aTipoLote);
  SetLength(mCampos,4);

  mCampos[0].Descricao := 'ID' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'ID' ;
  mCampos[0].NomeSQL   := 'ID' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Lote' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'lote' ;
  mCampos[1].NomeSQL   := 'lote' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := True ;

  mCampos[2].Descricao := 'Data Emissão' ;
  mCampos[2].Mascara   := 'dd/mm/yyyy' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'EMISSAO' ;
  mCampos[2].NomeSQL   := 'EMISSAO' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'Status' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'STATUS' ;
  mCampos[3].NomeSQL   := 'STATUS' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Lote',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result.ID   := StrToIntDef( Aux.Retorno.Values['ID'], 0) ;
    REsult.LOTE := Aux.Retorno.Values['lote'] ;
  finally
    FreeAndNil(Aux);
  end;

end;

class function Consulta.NaOperacao: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    Campos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,descricao,datacadastro from NATOPERACAO' ;
  SetLength(Campos,3);
  Campos[0].Descricao := 'CODIGO' ;
  Campos[0].Mascara   := '' ;
  Campos[0].Mostrar   := True ;
  Campos[0].Nome      := 'codigo' ;
  Campos[0].NomeSQL   := 'codigo' ;
  Campos[0].Pesquisa  := True ;
  Campos[0].Retorno   := True ;

  Campos[1].Descricao := 'DESCRICAO' ;
  Campos[1].Mascara   := '' ;
  Campos[1].Mostrar   := True ;
  Campos[1].Nome      := 'descricao' ;
  Campos[1].NomeSQL   := 'descricao' ;
  Campos[1].Pesquisa  := True ;
  Campos[1].Retorno   := True ;

  Campos[2].Descricao := 'DATA CADASTRO' ;
  Campos[2].Mascara   := '' ;
  Campos[2].Mostrar   := True ;
  Campos[2].Nome      := 'datacadastro' ;
  Campos[2].NomeSQL   := 'datacadastro' ;
  Campos[2].Pesquisa  := True ;
  Campos[2].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Natureza Operação',InstrucaoSQL,'',
          Campos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;

end;

class function Consulta.NCM: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    Campos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select a.id, a.ncm, a.descricao from NCM a' ;
  SetLength(Campos,3);

  Campos[0].Descricao := 'ID' ;
  Campos[0].Mascara   := '' ;
  Campos[0].Mostrar   := True ;
  Campos[0].Nome      := 'ID' ;
  Campos[0].NomeSQL   := 'ID' ;
  Campos[0].Pesquisa  := False ;
  Campos[0].Retorno   := True ;

  Campos[1].Descricao := 'N.C.M' ;
  Campos[1].Mascara   := '' ;
  Campos[1].Mostrar   := True ;
  Campos[1].Nome      := 'ncm' ;
  Campos[1].NomeSQL   := 'ncm' ;
  Campos[1].Pesquisa  := True ;
  Campos[1].Retorno   := False ;

  Campos[2].Descricao := 'Descrição' ;
  Campos[2].Mascara   := '' ;
  Campos[2].Mostrar   := True ;
  Campos[2].Nome      := 'descricao' ;
  Campos[2].NomeSQL   := 'descricao' ;
  Campos[2].Pesquisa  := True ;
  Campos[2].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de NCM',InstrucaoSQL,'',
          Campos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['ID'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.CEST: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    Campos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select a.id, a.cest, a.descricao from cest a' ;
  SetLength(Campos,3);

  Campos[0].Descricao := 'ID' ;
  Campos[0].Mascara   := '' ;
  Campos[0].Mostrar   := True ;
  Campos[0].Nome      := 'ID' ;
  Campos[0].NomeSQL   := 'ID' ;
  Campos[0].Pesquisa  := False ;
  Campos[0].Retorno   := True ;

  Campos[1].Descricao := 'CEST' ;
  Campos[1].Mascara   := '' ;
  Campos[1].Mostrar   := True ;
  Campos[1].Nome      := 'cest' ;
  Campos[1].NomeSQL   := 'cest' ;
  Campos[1].Pesquisa  := True ;
  Campos[1].Retorno   := False ;

  Campos[2].Descricao := 'Descrição' ;
  Campos[2].Mascara   := '' ;
  Campos[2].Mostrar   := True ;
  Campos[2].Nome      := 'descricao' ;
  Campos[2].NomeSQL   := 'descricao' ;
  Campos[2].Pesquisa  := True ;
  Campos[2].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de CEST',InstrucaoSQL,'',
          Campos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['ID'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.NfeCenario: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,descri from NFE_CENARIO' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Nome do Cenário' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descri' ;
  mCampos[1].NomeSQL   := 'descri' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de cenário para NF-e',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.NfeConfigFiscal: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,certificado from NFE_CONFIGURACAOFISCAL' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Nº Série Certificado' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'certificado' ;
  mCampos[1].NomeSQL   := 'certificado' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de config. fiscal NF-e',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.NfeMsgAdic: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,mensagem from nfe_msgadicional' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Mensagem' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'mensagem' ;
  mCampos[1].NomeSQL   := 'mensagem' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de informação adic. NF-e',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.OrdemProducao: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select op.codigo_ordem,op.numero_ordem,p.nome from ordemproducao op' +
                  ' left outer join produto p on (p.codigo = op.produto_fabricar)';
  SetLength(mCampos,3);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo_ordem' ;
  mCampos[0].NomeSQL   := 'codigo_ordem' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Produto' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'nome' ;
  mCampos[1].NomeSQL   := 'nome' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Nº Ordem' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'numero_ordem' ;
  mCampos[2].NomeSQL   := 'numero_ordem' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;


  Aux := TPdr_Consulta.Create(nil,'Consulta de Ordem Produção',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo_ordem'], 0) ;
  finally
    FreeAndNil(Aux);
  end;

end;

class function Consulta.Pais: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,codpais,nome from PAIS' ;
  SetLength(mCampos,3);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Código País' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'codpais' ;
  mCampos[1].NomeSQL   := 'codpais' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Nome País' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'nome' ;
  mCampos[2].NomeSQL   := 'nome' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Países',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Pedido: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin

  InstrucaoSQL := 'select p.codigo,p.data_faturamento,cli.razao as cliente from pedido p left outer join cliente cli on (cli.codigo=p.codCliente)' ;
  SetLength(mCampos,6);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := true ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := true ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'cliente' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'cliente' ;
  mCampos[1].NomeSQL   := 'cliente' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Pedidos',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;

end;

class function Consulta.Prazo_pagamento: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin

  InstrucaoSQL := 'select codigo,descricao from prazo_pagamento' ;
  SetLength(mCampos,6);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Prazo' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descricao' ;
  mCampos[1].NomeSQL   := 'descricao' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Prazo Pagamento',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;

end;

class function Consulta.Produto(pTipo : string; pTituloConsulta : string) : TRetornoProduto;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'select a.CODIGO,a.NOME,a.PRECO_VENDA,a.QTDE_ESTOQUE,'+
                  'case a.TIPO_PRODUTO '+
                  '   when ''MP'' then ''Matéria-Prima'' '+
                  '   when ''PA'' then ''Produto-Acabado'' '+
                  '   when ''S''  then ''Serviço'' '+
                  '   else ''Ambos'' '+
                  'end tipo,'+
                  'coalesce(b.SIGLA,'''') UM,coalesce(c.SIGLA, b.SIGLA, '''') CONVERSAO,'+
                  'coalesce(a.PRECO_CUSTO,0) PRECO_CUSTO '+
                  'from PRODUTO a ' +
                  'left join UNIDADE b on (b.CODIGO = a.COD_UNIDADE) '+
                  'left join UNIDADE c on (c.CODIGO = a.CONV_UNIDADE) ';
  {PA = Produto acabado, MP = Materia-Prima, S=Serviço, A=Ambos}
  if pTipo <> EmptyStr then
    InstrucaoSQL := InstrucaoSQL + 'where a.TIPO_PRODUTO in( ' + pTipo + ')';

  SetLength(mCampos, 8);

  mCampos[0].Descricao := 'Tipo';
  mCampos[0].Mascara := '';
  mCampos[0].Mostrar := True;
  mCampos[0].Nome := 'tipo';
  mCampos[0].NomeSQL := 'a.tipo';
  mCampos[0].Pesquisa := True;
  mCampos[0].Retorno := False;

  mCampos[1].Descricao := 'Código';
  mCampos[1].Mascara := '';
  mCampos[1].Mostrar := True;
  mCampos[1].Nome := 'codigo';
  mCampos[1].NomeSQL := 'a.codigo';
  mCampos[1].Pesquisa := True;
  mCampos[1].Retorno := True;

  mCampos[2].Descricao := 'Nome produto';
  mCampos[2].Mascara := '';
  mCampos[2].Mostrar := True;
  mCampos[2].Nome := 'nome';
  mCampos[2].NomeSQL := 'a.nome';
  mCampos[2].Pesquisa := True;
  mCampos[2].Retorno := True;
  mCampos[2].Width := 250;

  mCampos[3].Descricao := 'Preço';
  mCampos[3].Mascara := '#,##0.00';
  mCampos[3].Mostrar := True;
  mCampos[3].Nome := 'preco_venda';
  mCampos[3].NomeSQL := 'a.preco_venda';
  mCampos[3].Pesquisa := True;
  mCampos[3].Retorno := True;

  mCampos[4].Descricao := 'Estoque';
  mCampos[4].Mascara := '#,##0.000';
  mCampos[4].Mostrar := True;
  mCampos[4].Nome := 'qtde_estoque';
  mCampos[4].NomeSQL := 'a.qtde_estoque';
  mCampos[4].Pesquisa := True;
  mCampos[4].Retorno := False;

  mCampos[5].Descricao := 'UM';
  mCampos[5].Mascara := '';
  mCampos[5].Mostrar := False;
  mCampos[5].Nome := 'UM';
  mCampos[5].NomeSQL := 'UM';
  mCampos[5].Pesquisa := False;
  mCampos[5].Retorno := True;

  mCampos[6].Descricao := 'CONVERSAO';
  mCampos[6].Mascara := '';
  mCampos[6].Mostrar := False;
  mCampos[6].Nome := 'CONVERSAO';
  mCampos[6].NomeSQL := 'CONVERSAO';
  mCampos[6].Pesquisa := False;
  mCampos[6].Retorno := True;

  mCampos[7].Descricao := 'Custo (R$)';
  mCampos[7].Mascara := '#,##0.00';
  mCampos[7].Mostrar := False;
  mCampos[7].Nome := 'PRECO_CUSTO';
  mCampos[7].NomeSQL := 'a.PRECO_CUSTO';
  mCampos[7].Pesquisa := False;
  mCampos[7].Retorno := True;

  Aux := TPdr_Consulta.Create(nil, pTituloConsulta, InstrucaoSQL, '', mCampos, DM.LerDataSet, 2);
  try
    Aux.ShowModal;
    Result.iCodigo := StrToIntDef(Aux.Retorno.Values['codigo'], 0);
    Result.cPreco := StrToCurrDef(Aux.Retorno.Values['preco_venda'], 0);
    Result.sUM := Aux.Retorno.Values['UM'];
    Result.sUM_Conv := Aux.Retorno.Values['CONVERSAO'];
    Result.PrecoCusto := StrToCurr(Aux.Retorno.Values['PRECO_CUSTO']);
    Result.Descricao := Aux.Retorno.Values['nome'];
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Ramo_Atividade: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,descri from RAMO_ATIVIDADE' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Descrição' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descri' ;
  mCampos[1].NomeSQL   := 'descri' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;


  Aux := TPdr_Consulta.Create(nil,'Consulta de Ramo de Atividades',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Servico: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select P.CODIGO, P.NOME, P.PRECO_VENDA '+
                  'from PRODUTO P '+
                  'where p.tipo_produto = ''S'' ';
  SetLength(mCampos,3);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'p.codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Descrição' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'nome' ;
  mCampos[1].NomeSQL   := 'p.nome' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;
  mCampos[1].Width     := 200 ;

  mCampos[2].Descricao := 'Valor R$' ;
  mCampos[2].Mascara   := 'R$ #,##0.00' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'preco_venda' ;
  mCampos[2].NomeSQL   := 'p.preco_venda' ;
  mCampos[2].Pesquisa  := False ;
  mCampos[2].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Serviço',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.SubGrupo_Produto: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,descri from SUBGRUPO_PROD' ;
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Descrição' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descri' ;
  mCampos[1].NomeSQL   := 'descri' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Sub-Grupo de Produto',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Historico(aIdGrupo:integer;aDescri: string): Integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'select a.ID,a.CHAVE,a.DESCRICAO,a.debito_credito from HISTORICO a ';
  if (aIdGrupo <> -1) then
    InstrucaoSQL := InstrucaoSQL+'where a.id_grupo='+aIdGrupo.ToString;
  if (aDescri <> '') then
    InstrucaoSQL := InstrucaoSQL+' and a.DESCRICAO like '+QuotedStr(aDescri+'%');


  SetLength(mCampos,4);

  mCampos[0].Descricao := 'Código';
  mCampos[0].Mascara := '';
  mCampos[0].Mostrar := True;
  mCampos[0].Nome := 'id';
  mCampos[0].NomeSQL := 'id';
  mCampos[0].Pesquisa := True;
  mCampos[0].Retorno := True;

  mCampos[1].Descricao := 'Identificação';
  mCampos[1].Mascara := '';
  mCampos[1].Mostrar := True;
  mCampos[1].Nome := 'chave';
  mCampos[1].NomeSQL := 'chave';
  mCampos[1].Pesquisa := True;
  mCampos[1].Retorno := False;

  mCampos[2].Descricao := 'Descrição';
  mCampos[2].Mascara := '';
  mCampos[2].Mostrar := True;
  mCampos[2].Nome := 'descricao';
  mCampos[2].NomeSQL := 'descricao';
  mCampos[2].Pesquisa := True;
  mCampos[2].Retorno := False;

  mCampos[3].Descricao := 'Débito/Crédito';
  mCampos[3].Mascara := '';
  mCampos[3].Mostrar := True;
  mCampos[3].Nome := 'debito_credito';
  mCampos[3].NomeSQL := 'debito_credito';
  mCampos[3].Pesquisa := False;
  mCampos[3].Retorno := False;

  Aux := TPdr_Consulta.Create(nil, 'Consulta de Histórico', InstrucaoSQL, 'descricao',
                                 mCampos, DM.LerDataSet, 2);
  try
    Aux.ShowModal;
    Result := StrToIntDef(Aux.Retorno.Values['id'], 0);
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.NF_ENTRADA: Integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'select a.ID,a.N_NF,a.EMISSAO,a.TOTNOTA,'+
                  'b.RAZAO_NOME FORNECEDOR '+
                  'from NOTA_ENTRADA a '+
                  'left join FABRICANTE b on (b.CODIGO=a.CODFOR) ';
  SetLength(mCampos,5);

  mCampos[0].Descricao := 'ID' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'ID' ;
  mCampos[0].NomeSQL   := 'ID' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True;

  mCampos[1].Descricao := 'Nº N.F.' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'N_NF' ;
  mCampos[1].NomeSQL   := 'N_NF' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False;

  mCampos[2].Descricao := 'Emissão' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'EMISSAO' ;
  mCampos[2].NomeSQL   := 'EMISSAO' ;
  mCampos[2].Pesquisa  := False ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'Valor R$' ;
  mCampos[3].Mascara   := '#,##0.00' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'TOTNOTA' ;
  mCampos[3].NomeSQL   := 'TOTNOTA' ;
  mCampos[3].Pesquisa  := False ;
  mCampos[3].Retorno   := False ;

  mCampos[4].Descricao := 'Fornecedor' ;
  mCampos[4].Mascara   := '' ;
  mCampos[4].Mostrar   := True ;
  mCampos[4].Nome      := 'FORNECEDOR' ;
  mCampos[4].NomeSQL   := 'FORNECEDOR' ;
  mCampos[4].Pesquisa  := True ;
  mCampos[4].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil, 'Consulta de Notas', InstrucaoSQL, '',
                                   mCampos, DM.LerDataSet, 1);
  try
    Aux.ShowModal;
    Result := StrToIntDef(Aux.Retorno.Values['ID'], 0);
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Historico_Grupo: Integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'select a.codigo,a.descri from HISTORICO_GRUPO a ';
  SetLength(mCampos,2);

  mCampos[0].Descricao := 'ID' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Nome do grupo' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'descri' ;
  mCampos[1].NomeSQL   := 'descri' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil, 'Consulta de grupo de histórico', InstrucaoSQL, '',
                                   mCampos, DM.LerDataSet, 1);
  try
    Aux.ShowModal;
    Result := StrToIntDef(Aux.Retorno.Values['codigo'], 0);
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.ContaBancaria: string ;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'select a.* from CONTA_BANCARIA a ';
  SetLength(mCampos,5);

  mCampos[0].Descricao := 'ID' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'id' ;
  mCampos[0].NomeSQL   := 'id' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Nº Banco' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'bco_numero' ;
  mCampos[1].NomeSQL   := 'bco_numero' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Banco' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'bco_nome' ;
  mCampos[2].NomeSQL   := 'bco_nome' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'Agência' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'bco_agencia' ;
  mCampos[3].NomeSQL   := 'bco_agencia' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;

  mCampos[4].Descricao := 'Conta' ;
  mCampos[4].Mascara   := '' ;
  mCampos[4].Mostrar   := True ;
  mCampos[4].Nome      := 'bco_conta' ;
  mCampos[4].NomeSQL   := 'bco_conta' ;
  mCampos[4].Pesquisa  := True ;
  mCampos[4].Retorno   := False ;


  Aux := TPdr_Consulta.Create(nil, 'Consulta de conta bancária', InstrucaoSQL, '',
                                   mCampos, DM.LerDataSet, 2);
  try
    Aux.ShowModal;
    Result := Aux.Retorno.Values['id'];
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Transportadora: integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'select codigo,razao,'+
                  'COALESCE(cpf,cnpj)cpf_cnpj,cidade '+
                  'from TRANSPORTADORA ' ;
  SetLength(mCampos,4);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Nome/Razão Social' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'razao' ;
  mCampos[1].NomeSQL   := 'razao' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[3].Descricao := 'CPF/CNPJ' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'cpf_cnpj' ;
  mCampos[3].NomeSQL   := 'cpf_cnpj' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;

  mCampos[5].Descricao := 'Cidade' ;
  mCampos[5].Mascara   := '' ;
  mCampos[5].Mostrar   := True ;
  mCampos[5].Nome      := 'cidade' ;
  mCampos[5].NomeSQL   := 'cidade' ;
  mCampos[5].Pesquisa  := True ;
  mCampos[5].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Transportadora',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Unidade: TRetornoUnidade;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,sigla,nome from UNIDADE' ;
  SetLength(mCampos,3);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Sigla' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'sigla' ;
  mCampos[1].NomeSQL   := 'sigla' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := True ;

  mCampos[2].Descricao := 'Unidade de Medida' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'nome' ;
  mCampos[2].NomeSQL   := 'nome' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Unidades de Medida',InstrucaoSQL,'',
                                mCampos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result.Codigo := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
    Result.Sigla  := Aux.Retorno.Values['sigla'] ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Usuario: Integer;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'SELECT r.USU_ID, r.USU_NOME, r.PERFIL, r.NOME FROM USUARIO r ';
  SetLength(mCampos,4);

  mCampos[0].Descricao := 'usu_id' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'usu_id' ;
  mCampos[0].NomeSQL   := 'usu_id' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Nome' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'nome' ;
  mCampos[1].NomeSQL   := 'nome' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;
  mCampos[1].Width     := 150;

  mCampos[2].Descricao := 'Login' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'USU_NOME' ;
  mCampos[2].NomeSQL   := 'USU_NOME' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;
  mCampos[1].Width     := 150;

  mCampos[3].Descricao := 'Perfil' ;
  mCampos[3].Mascara   := '' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'PERFIL' ;
  mCampos[3].NomeSQL   := 'PERFIL' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil, 'Consulta de usuários', InstrucaoSQL, '',
                                   mCampos, DM.LerDataSet, 0);
  try
    Aux.ShowModal;
    Result := StrToIntDef(Aux.Retorno.Values['usu_id'], 0);
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Venda: TRetornoVenda;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'SELECT a.ID, a.TIPO, a.EMISSAO, a.VL_TOTAL,'+
                  'b.NOME_RAZAO cliente '+
                  'FROM PDV_MASTER a '+
                  'left outer join CLIENTE b on (b.CODIGO = a.ID_CLIENTE) '+
                  'where a.STATUS is null' ;
  SetLength(mCampos,5);

  mCampos[0].Descricao := 'ID' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True;
  mCampos[0].Nome      := 'ID' ;
  mCampos[0].NomeSQL   := 'ID' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Tipo' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := False ;
  mCampos[1].Nome      := 'tipo' ;
  mCampos[1].NomeSQL   := 'tipo' ;
  mCampos[1].Pesquisa  := False ;
  mCampos[1].Retorno   := True ;

  mCampos[2].Descricao := 'Data Emissão' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'emissao' ;
  mCampos[2].NomeSQL   := 'emissao' ;
  mCampos[2].Pesquisa  := False ;
  mCampos[2].Retorno   := False ;

  mCampos[3].Descricao := 'Total Venda' ;
  mCampos[3].Mascara   := '#,##0.00' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'VL_TOTAL' ;
  mCampos[3].NomeSQL   := 'VL_TOTAL' ;
  mCampos[3].Pesquisa  := False ;
  mCampos[3].Retorno   := False ;

  mCampos[4].Descricao := 'Cliente' ;
  mCampos[4].Mascara   := '' ;
  mCampos[4].Mostrar   := True ;
  mCampos[4].Nome      := 'cliente' ;
  mCampos[4].NomeSQL   := 'NOME_RAZAO' ;
  mCampos[4].Pesquisa  := True ;
  mCampos[4].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Vendas - PDV',InstrucaoSQL,'',
                                mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result.Tipo := Aux.Retorno.Values['tipo'] ;
    Result.ID   := StrToIntDef(Aux.Retorno.Values['ID'],0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.CFOP: string;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    Campos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select cfcod,cfnome from CFOP' ;
  SetLength(Campos,2);
  Campos[0].Descricao := 'Código Cfop' ;
  Campos[0].Mascara   := '' ;
  Campos[0].Mostrar   := True ;
  Campos[0].Nome      := 'cfcod' ;
  Campos[0].NomeSQL   := 'cfcod' ;
  Campos[0].Pesquisa  := True ;
  Campos[0].Retorno   := True ;

  Campos[1].Descricao := 'Descrição' ;
  Campos[1].Mascara   := '' ;
  Campos[1].Mostrar   := True ;
  Campos[1].Nome      := 'cfnome' ;
  Campos[1].NomeSQL   := 'cfnome' ;
  Campos[1].Pesquisa  := True ;
  Campos[1].Retorno   := False ;

  Aux := TPdr_Consulta.Create(nil,'Consulta de Cfop',InstrucaoSQL,'',
          Campos,DM.LerDataSet,0);
  try
    Aux.ShowModal ;
    Result := Aux.Retorno.Values['cfcod'] ;
  finally
    FreeAndNil(Aux);
  end;

end;

class function Consulta.Cheque: TCheque;
var
  Aux: TPdr_Consulta;
  InstrucaoSQL: string;
  mCampos: TArrayCampoConsulta;
begin
  InstrucaoSQL := 'SELECT a.BCO_NOME, r.NUM_CHEQUE, r.VALOR, r.NOMINAL,'+
                  'r.ID_BANCO '+
                  'FROM CHEQUE r '+
                  'left outer join CONTA_BANCARIA a on (a.ID = r.ID_BANCO) ';
  SetLength(mCampos,5);

  mCampos[0].Descricao := 'ID_BANCO' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := False ;
  mCampos[0].Nome      := 'ID_BANCO' ;
  mCampos[0].NomeSQL   := 'ID_BANCO' ;
  mCampos[0].Pesquisa  := False ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Banco' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'BCO_NOME' ;
  mCampos[1].NomeSQL   := 'BCO_NOME' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Nº do cheque' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'NUM_CHEQUE' ;
  mCampos[2].NomeSQL   := 'NUM_CHEQUE' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := True ;

  mCampos[3].Descricao := 'Valor R$' ;
  mCampos[3].Mascara   := '#,##0.00' ;
  mCampos[3].Mostrar   := True ;
  mCampos[3].Nome      := 'VALOR' ;
  mCampos[3].NomeSQL   := 'VALOR' ;
  mCampos[3].Pesquisa  := True ;
  mCampos[3].Retorno   := False ;

  mCampos[4].Descricao := 'Nominal' ;
  mCampos[4].Mascara   := '' ;
  mCampos[4].Mostrar   := True ;
  mCampos[4].Nome      := 'NOMINAL' ;
  mCampos[4].NomeSQL   := 'NOMINAL' ;
  mCampos[4].Pesquisa  := True ;
  mCampos[4].Retorno   := False ;


  Aux := TPdr_Consulta.Create(nil, 'Consulta de cheque', InstrucaoSQL, '',
                                   mCampos, DM.LerDataSet,1);
  try
    Aux.ShowModal;
    Result.ID_Banco := Aux.Retorno.Values['id_banco'];
    Result.NCheque  := StrToIntDef( Aux.Retorno.Values['NUM_CHEQUE'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

class function Consulta.Cidades: integer;
var Aux : TPdr_Consulta ;
    InstrucaoSQL : string ;
    mCampos : TArrayCampoConsulta ;
begin
  InstrucaoSQL := 'select codigo,nome,uf from CIDADES' ;
  SetLength(mCampos,3);

  mCampos[0].Descricao := 'Código' ;
  mCampos[0].Mascara   := '' ;
  mCampos[0].Mostrar   := True ;
  mCampos[0].Nome      := 'codigo' ;
  mCampos[0].NomeSQL   := 'codigo' ;
  mCampos[0].Pesquisa  := True ;
  mCampos[0].Retorno   := True ;

  mCampos[1].Descricao := 'Cidade' ;
  mCampos[1].Mascara   := '' ;
  mCampos[1].Mostrar   := True ;
  mCampos[1].Nome      := 'nome' ;
  mCampos[1].NomeSQL   := 'nome' ;
  mCampos[1].Pesquisa  := True ;
  mCampos[1].Retorno   := False ;

  mCampos[2].Descricao := 'Estado' ;
  mCampos[2].Mascara   := '' ;
  mCampos[2].Mostrar   := True ;
  mCampos[2].Nome      := 'uf' ;
  mCampos[2].NomeSQL   := 'uf' ;
  mCampos[2].Pesquisa  := True ;
  mCampos[2].Retorno   := False ;


  Aux := TPdr_Consulta.Create(nil,'Consulta de Cidades',InstrucaoSQL,'',
          mCampos,DM.LerDataSet,1);
  try
    Aux.ShowModal ;
    Result := StrToIntDef( Aux.Retorno.Values['codigo'], 0) ;
  finally
    FreeAndNil(Aux);
  end;
end;

end.
