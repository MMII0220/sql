CREATE OR REPLACE FUNCTION fnc_trg_person_update_audit()
  RETURNS trigger AS 
$$
BEGIN
  INSERT INTO person_audit (
    created,
    type_event,
    row_id, 
    name, 
    age,
    gender,
    address
  ) VALUES (
    now(),
    'U',
    OLD.*
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_update_audit 
  AFTER UPDATE ON person
  FOR EACH ROW 
  EXECUTE PROCEDURE fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;

-- DELETE FROM person_audit WHERE row_id = 10;

-- SELECT * from person_audit;
-- SELECT * from person;
