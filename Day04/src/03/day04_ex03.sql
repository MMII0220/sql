SELECT generate_series from v_generated_dates
EXCEPT
SELECT visit_date from person_visits
ORDER BY 1;
