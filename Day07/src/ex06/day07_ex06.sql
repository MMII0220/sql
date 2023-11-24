SELECT pz.name as name, 
       count(po.order_date) as count_of_orders, 
       ROUND(avg(m.price)) as average_price, 
       max(m.price) as max_price, 
       min(m.price) as min_price
FROM person_order po
JOIN person p on p.id = po.person_id
JOIN menu m on m.id = po.menu_id
JOIN pizzeria pz on pz.id = m.pizzeria_id
GROUP BY pz.name
order BY name;

-- SELECT * from menu;
-- SELECT * from person;
-- SELECT * from person_order;
-- SELECT * from person_visits;
-- SELECT * FROM pizzeria;
