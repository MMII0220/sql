select order_date, concat(p.name, ' (age:', p.age, ')') as person_information 
from person_order as po
JOIN person as p on po.person_id = p.id
order by order_date, person_information;

-- select * from person_order;
-- select * from person;
