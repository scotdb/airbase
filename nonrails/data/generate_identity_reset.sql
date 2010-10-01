select 
'alter table airbase.aircraft alter column id restart with ' || 
char(max(id) + 1) || 
' #' 
from 
airbase.aircraft
#
