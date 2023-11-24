SELECT person_id, COUNT(person_id) AS count_of_visits
FROM person_visits
GROUP BY person_id
ORDER BY count_of_visits DESC, person_id ASC;

-- SELECT * from menu;
-- SELECT * from person;
-- SELECT * from person_order;
-- SELECT * from person_visits;
