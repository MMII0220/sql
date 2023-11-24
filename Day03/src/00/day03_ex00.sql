select m.pizza_name pizza_name, price, pz.name pizzeria_name, visit_date
from person_visits pv
join pizzeria pz on pz.id = pv.pizzeria_id
join menu m on m.pizzeria_id = pz.id
join person p on p.id = pv.person_id
WHERE (price BETWEEN 800 and 1000) and p.name = 'Kate'
order BY pizza_name, price, pizzeria_name;
