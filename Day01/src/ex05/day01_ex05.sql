select 
ps.id as "person.id", ps.name as "person.name", 
age, gender, address, pz.id as "pizzeria.id", 
pz.name as "pizzeria.name", rating
from person as ps
cross join pizzeria as pz
order by ps.id, pz.id;

-- select * from person;
-- select * from pizzeria;
