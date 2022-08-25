select 'SET STATISTICS INDEX '|| TRIM(I.RDB$INDEX_NAME) ||';'
from rdb$indices i
where i.rdb$system_flag = 0;