select 
'alter table airbase.aircraft_histories alter column id restart with ' || 
char(max(id) + 1) || 
' #' 
from 
airbase.aircraft_histories
#
