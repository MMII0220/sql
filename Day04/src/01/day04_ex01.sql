SELECT name from v_persons_male
UNION
SELECT name from v_persons_female
ORDER BY name;

