ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number INTEGER;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN parent_id INTEGER;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

UPDATE person
    SET height = 180,
        weight = 380,
        dead = 0,
        phone_number = 4012959393,
        salary = 78399,
        dob = "1990-06-30"
    WHERE first_name = "Zed";



UPDATE person
    SET height = 165,
        weight = 145,
        dead = 0,
        phone_number = 4014338056,
        salary = 60000,
        dob = "1995-01-22"
    WHERE first_name = "Spencer";

UPDATE pet
    SET dob = date("now")
    WHERE name = "Donky" OR name = "Fluffy";

UPDATE pet
    SET dob = "2000-04-25"
    WHERE name = "Gigantor" OR name = "DooDOO_Unicorn";

INSERT INTO person (id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES (2, "Snoob", "Dog", 42, 200, 170, 1, 9172059292, 320650303, date("now"));

INSERT INTO person (id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES (3, "Eminem", "Slimshady", 38, 180, 168, 1, 8022953939, 32040506, date("now", "-38 years"));

INSERT INTO person (id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES (4, "Matt", "Dickman", 35, 190, 215, 1, 2174952959, 23000, date("now", "-35 years"));

INSERT INTO person (id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES (5, "Dan", "Pohlig", 38, 195, 190, 0, 2172959294, 302403, date("now", "-38 years"));

INSERT INTO pet (id, name, breed, age, dead, dob, parent_id)
    VALUES (4, "Banana", "Monkey", 1, 0, date("now", "-1 years"), (SELECT id FROM pet WHERE name = "Donky"));

INSERT INTO pet (id, name, breed, age, dead, dob, parent_id)
    VALUES (5, "Charlie", "Dog", 5, 0, date("now", "-5 years"), (SELECT id FROM pet WHERE name = "Fluffy"));

INSERT INTO pet (id, name, breed, age, dead, dob, parent_id)
    VALUES (6, "Ultron", "Robot", 999999, 1, date("now", "-2 years"), (SELECT id FROM pet WHERE name = "Gigantor"));

INSERT INTO pet (id, name, breed, age, dead, dob, parent_id)
    VALUES (7, "Multicorn", Unicorn, 1000, 1, date("now", "-1000 years"), (SELECT id FROM pet WHERE name =
    DooDOO_Unicorn));

SELECT * FROM pet
    WHERE parent_id  = (SELECT id FROM pet WHERE name = "Fluffy");

UPDATE TABLE
   SET putrchased_on = date("now")
   WHERE person_id = 0 OR person_id = 1;

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;
