select order_date, concat(p.name, ' (age:', p.age, ')') as person_information
from person as p
natural join (select person_id as id, id as person_id, order_date from person_order) as po
order by order_date, person_information;

-- select * from person_order;
-- select * from person;

