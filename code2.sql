DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER,
  dob DATETIME
);

CREATE TABLE pet (
  id INTEGER PRIMARY KEY,
  name TEXT,
  breed TEXT,
  age INTEGER,
  dead INTEGER
);

CREATE TABLE person_pet (
  person_id INTEGER,
  pet_id INTEGER,
  purchased_on DATETIME
);
-- INSERT INTO person (id, first_name, last_name, age)
--     VALUES (0, 'Zed', 'Shaw', 37);
--
-- INSERT INTO pet (id, name, breed, age, dead)
--     VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);
--
-- INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);
-- INSERT INTO pet VALUES (3, 'DooDOO_Unicorn', 'Unicorn', 10000000, 0);
--
-- INSERT INTO person (id, first_name, last_name, age)
--     VALUES (1, "Spencer", "Tse", 24);
--
-- INSERT INTO pet (id, name, breed, age, dead)
--     VALUES (2, "Charlie", "dog", 2, 0);
-- INSERT INTO person_pet (person_id, pet_id) VALUES (0,0);
-- INSERT INTO person_pet VALUES (0,1);
-- INSERT INTO person_pet (person_id, pet_id) VALUES (1, 2);
-- DELETE FROM pet WHERE id = 2;
--
-- INSERT INTO pet VALUES (2, 'bobby', 'pig', 2, 1);
-- /* make sure there's dead pets */
-- SELECT name, age FROM pet WHERE dead = 1;
--
-- /* aww poor robot */
-- DELETE FROM pet WHERE dead = 1;
--
-- /* make sure the robot is gone */
-- SELECT * FROM pet;
--
-- /* let's resurect the robot */
-- INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);
-- INSERT INTO pet VALUES (2, 'Donky', 'Monkey', 1, 0);
--
-- /* the robot LIVES! */
-- SELECT * FROM pet;
--
-- ALTER TABLE person ADD COLUMN height INTEGER;
-- ALTER TABLE person ADD COLUMN weight INTEGER;
