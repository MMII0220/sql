with cte_ex as (
    select missing_date
    from (select generate_series('2022-01-01'::DATE, '2022-01-10'::DATE, '1 day')::DATE as missing_date) t
    left join person_visits on missing_date = visit_date and (person_id = 1 OR person_id = 2)
    where visit_date IS NULL
    ORDER BY missing_date
)
select * from cte_ex;

