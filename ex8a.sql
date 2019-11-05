-- SELECT pet.name
--     FROM pet, person_pet, person
--     WHERE
--     person.id = person_pet.person_id AND
--     pet.id = person_pet.pet_id AND
--     person.first_name = "Spencer";


DELETE FROM pet WHERE id IN (
  SELECT pet.id
      FROM pet, person_pet, person
      WHERE
      person.id = person_pet.person_id AND
      pet.id = person_pet.pet_id AND
      person.first_name = "Spencer"
);

SELECT * FROM pet;

-- 
-- INSERT INTO pet (id, name, breed, age, dead) VALUES (1,"Chiti", "Robot", 1000, 1);
-- INSERT INTO person_pet (person_id, pet_id) VALUES (0, 1);

DELETE FROM person WHERE id IN (
  SELECT person.id
    FROM person, person_pet, pet
    WHERE
    pet.id = person_pet.pet_id AND
    person.id = person_pet.person_id AND
    pet.dead = 1
);
