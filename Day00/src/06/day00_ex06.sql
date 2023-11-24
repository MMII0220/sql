select 
(select name from person where person_order.person_id = person.id) as NAME,
(SELECT NAME = 'Denis' from person WHERE person.id = person_order.person_id) as check_name
from person_order
where person_order.order_date = '2022-01-07' and menu_id in(13, 14, 18);
