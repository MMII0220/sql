select DISTINCT p.name as person_name 
from person_order po 
join person p on po.person_id = p.id 
join person_visits pv on pv.person_id = p.id 
join pizzeria pz on pz.id = pv.pizzeria_id 
join menu m on m.pizzeria_id = pz.id 
where gender = 'male' and address in ('Moscow', 'Samara') and m.pizza_name in ('pepperoni pizza', 'mushroom pizza') 
order by person_name DESC;
