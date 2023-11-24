select m.pizza_name as pizza_name, pz.name as pizzeria_name from menu m
join pizzeria pz on m.pizzeria_id = pz.id
join person_order po on m.id = po.menu_id
join person p on po.person_id = p.id
where p.name in ('Denis', 'Anna')
order by pizza_name, pizzeria_name;

