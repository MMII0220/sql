--1
select name from pizzeria 
where name not in 
(select DISTINCT name 
from pizzeria 
join person_visits on pizzeria.id = person_visits.pizzeria_id);
--2
SELECT name from pizzeria as pz
where not exists (select 1 from person_visits as pv where pz.id = pizzeria_id);
