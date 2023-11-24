create VIEW v_generated_dates as (
SELECT generate_series('2022-01-01'::date, '2022-01-31'::date, '1 day')::date
)
ORDER BY 1;
