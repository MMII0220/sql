select 
(select name from person where id = pv.person_id) as person_name,
(select name from pizzeria where id = pv.pizzeria_id) as pizzeria_name
from
(select * from person_visits WHERE visit_date BETWEEN '2022-01-07' and '2022-01-09') as pv
order by 
person_name ASC,
pizzeria_name DESC;

-- select * from person;
-- select * from pizzeria;
-- select * from person_visits;
