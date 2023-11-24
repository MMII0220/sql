select p.name, p.rating 
from pizzeria p 
LEFT join person_visits pv on pv.pizzeria_id = p.id
where pv.pizzeria_id is NULL;

