select order_date as action_date, person.name as person_name 
from person_order
join person on person_order.person_id = person.id
INTERSECT
select visit_date as action_date, person.name as person_name 
from person_visits
join person on person.id = person_visits.person_id
order by action_date ASC, person_name DESC;

-- select * from person;
-- SELECT * from menu;
-- SELECT * from person_order;
-- SELECT * from person_visits;
