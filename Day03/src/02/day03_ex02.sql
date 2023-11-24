select pizza_name, price, pz.name as pizzeria_name 
from menu 
join pizzeria pz on menu.pizzeria_id = pz.id 
where menu.id NOT IN (select menu_id from person_order) 
order by 1, 2;

-- select * from pizzeria;
-- select * from person;
-- select * FROM person_order;
-- SELECT * from person_visits;
-- SELECT * from menu;
