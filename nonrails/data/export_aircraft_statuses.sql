export to aircraft_statuses.del of del
select 
id, 
substr(description,1,1) as aircraft_status 
from 
airbase.aircraft_statuses
#
