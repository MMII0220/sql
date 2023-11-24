select pz.name as pizza_name
from person p
join person_visits pv on p.id = pv.person_id
join pizzeria pz on pz.id = pv.pizzeria_id
join menu m on m.pizzeria_id = pv.pizzeria_id
where m.price < 800 and pv.visit_date = '2022-01-08' and p.name = 'Dmitriy';
