insertex INTO ncm_aux  (ncm, descricao, nacionalfederal, importadofederal, estadual, municipal, vigencianicio, vigenciafim)
from CSV 'C:\projetos\LDESistemas\Doctos\TabelaNCM.csv'
skip 1
DELIMITER ';';

insert into ncm (ncm, descricao, nacionalfederal, importadofederal, estadual, municipal, vigencianicio, vigenciafim)
select a."ncm", a."descricao", cast(a."nacionalfederal" as numeric(15,2)), cast(a."importadofederal" as numeric(15,2)),
cast(a."estadual" as numeric(15,2)), cast(a."municipal" as numeric (15,2)), cast(replace(a."vigencianicio",'/','.') as date),
cast(replace(a."vigenciafim",'/','.') as date) from ncm_aux a

drop table ncm_aux;