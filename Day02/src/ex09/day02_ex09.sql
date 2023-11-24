select p.name from person p
join person_order po on p.id = po.person_id
join menu m ON m.id = po.menu_id
WHERE m.pizza_name in ('pepperoni pizza', 'cheese pizza')
and p.gender = 'female'
GROUP BY p.name
HAVING count(m.pizza_name) > 1;
