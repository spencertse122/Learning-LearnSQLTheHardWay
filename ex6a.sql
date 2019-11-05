SELECT pet.id, pet.name, pet.age, pet.dead
    FROM pet
    WHERE pet.id IN
    (
      SELECT pet_id FROM person_pet, person
      WHERE person_pet.person_id = person.id
      AND person.first_name = 'Spencer'
    );
