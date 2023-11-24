-- first statement
select name, 
       rating 
from pizzeria 
where rating >= 3.5 
      and rating <= 5 
ORDER BY rating;
-- second statement
SELECT name, 
       rating 
from pizzeria 
where rating BETWEEN 3.5 and 5 
ORDER BY rating;
