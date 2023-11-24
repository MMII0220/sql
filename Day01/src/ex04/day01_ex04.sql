select person_id from person_order
where order_date = '2022-01-07'
EXCEPT ALL
select person_id from person_visits
where visit_date = '2022-01-07';

-- select * from person_order;
-- select * from person_visits;
