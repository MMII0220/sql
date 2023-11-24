SELECT id, 
        name, 
        age,
        case
            WHEN age >= 10 and age <= 20 then 'interval #1'
            when age > 20 and age < 24 THEN 'interval #2'
            else 'interval #3'
        end as interval_info
from person
order by interval_info ASC;

-- select * from person;