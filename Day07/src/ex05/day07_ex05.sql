SELECT DISTINCT p.name as name
FROM person_visits pv
JOIN person p on p.id = pv.person_id
ORDER BY 1;


-- SELECT * from menu;
-- SELECT * from person;
-- SELECT * from person_order;
-- SELECT * from person_visits;

