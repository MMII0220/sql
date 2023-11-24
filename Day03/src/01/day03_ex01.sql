SELECT id as menu_id from menu
where id not in (SELECT menu_id from person_order)
order BY 1;
