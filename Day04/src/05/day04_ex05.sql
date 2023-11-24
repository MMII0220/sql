CREATE OR REPLACE View v_price_with_discount as (
SELECT p.name, m.pizza_name, m.price, ROUND(m.price - m.price * 0.1) as discount_price
from menu m
JOIN person_order po ON po.menu_id = m.id
JOIN person p on p.id = po.person_id
ORDER BY 1, 2
);

-- SELECT * FROM v_price_with_discount;
