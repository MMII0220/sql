select order_date as action_date, person_id from person_order
INTERSECT
select visit_date as action_date, person_id from person_visits
order by action_date ASC, person_id DESC;

-- SELECT * from menu;
-- SELECT * from person_order;
