select name as object_name from person
UNION ALL
select pizza_name as object_name from menu
order by object_name;

