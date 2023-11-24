COMMENT ON TABLE person_discounts IS 'Таблица для управления персонализированными скидками для частных лиц и пиццерий.';

COMMENT ON COLUMN person_discounts.id IS 'Основной идентификатор записи.';
COMMENT ON COLUMN person_discounts.person_id IS 'Идентификатор человека.';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Идентификатор пиццерии.';
COMMENT ON COLUMN person_discounts.discount IS 'Процентная скидка применяется к посетителю указанной пиццерии.';

-- SELECT description FROM pg_description WHERE objsubid = 0 AND objoid = 'person_discounts'::regclass;

-- SELECT description
-- FROM pg_description
-- WHERE objsubid = (SELECT ordinal_position FROM information_schema.columns WHERE table_name = 'person_discounts' AND column_name = 'id')
--   AND objoid = 'person_discounts'::regclass;
