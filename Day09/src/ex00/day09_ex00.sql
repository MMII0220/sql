CREATE TABLE if not EXISTS person_audit  (
    created TIMESTAMP with time zone DEFAULT now() NOT NULL,
    type_event char(1) DEFAULT 'I' NOT NULL CHECK (type_event IN ('I', 'U', 'D')),
    row_id bigint PRIMARY KEY, 
    name varchar(255), 
    age integer, 
    gender VARCHAR(255), 
    address VARCHAR(255)
);
-- function
CREATE or replace FUNCTION fnc_trg_person_insert_audit()
    RETURNS TRIGGER AS
$$
BEGIN
    INSERT INTO person_audit (row_id, name, age, gender, address)
    VALUES (NEW.*);
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_insert_audit
    AFTER INSERT on person
    FOR EACH ROW
    EXECUTE PROCEDURE fnc_trg_person_insert_audit();
INSERT INTO person(id, name, age, gender, address) 
VALUES (10, 'Damir', 22, 'male', 'Irkutsk');

-- DELETE FROM person_audit WHERE row_id = 10;
-- DELETE FROM person WHERE id = 10;

-- SELECT * from person_audit;
-- SELECT * from person;
-- SELECT * from person;
-- SELECT * from person_order;
-- SELECT * from person_visits;
-- SELECT * from pizzeria;
-- SELECT * from menu;
