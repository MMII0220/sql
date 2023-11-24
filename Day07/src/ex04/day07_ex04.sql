SELECT p.name as name, count(pv.visit_date) as count_of_visits
FROM person_visits pv
JOIN person p on p.id = pv.person_id
JOIN pizzeria pz on pz.id = pv.pizzeria_id
GROUP BY p.name
HAVING count(pv.visit_date) > 3
ORDER BY 2 DESC, 1 ASC;

-- SELECT * from menu;
-- SELECT * from person;
-- SELECT * from person_order;
-- SELECT * from person_visits;
