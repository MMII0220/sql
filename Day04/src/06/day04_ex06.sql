CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pz.name AS pizza_name FROM person p
JOIN person_visits pv ON p.id = pv.person_id
JOIN pizzeria pz ON pz.id = pv.pizzeria_id
JOIN menu m ON m.pizzeria_id = pv.pizzeria_id
WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND m.price < 800;

-- create MATERIALIZED VIEW mv_dmitriy_visits_and_eats as (
--     SELECT pz.name as pizzeria--, pv.order_date, m.price
--     from person p
--         JOIN person_visits pv on pv.pizzeria_id = p.id
--         JOIN pizzeria pz ON pz.id = pv.person_id
--         JOIN menu m on m.pizzeria_id = pv.pizzeria_id
--     where p.name = 'Dmitriy' 
--         AND pv.visit_date = '2022-01-08' 
--         AND m.price < 800
-- );
drop MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
SELECT * from mv_dmitriy_visits_and_eats;
