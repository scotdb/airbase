export to airport_visits.del of del 
select 
a.id         as airport_id,
b.visit_date as visit_date 
from 
dbair001.airports a 
inner join 
dbair001.t2000airvisit b 
on 
a.name = b.visit_location
#
