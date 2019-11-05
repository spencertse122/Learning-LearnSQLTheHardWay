/* simple query to get a related table */
select * from person, person_pet, pet
    where person.id = person_pet.person_id and pet.id = person_pet.pet_id;

/* add a basic count column and append the GROUP BY */
select person.first_name, pet.breed, pet.dead, count(dead)
    from person, person_pet, pet
    where person.id = person_pet.person_id and pet.id = person_pet.pet_id
    group by pet.breed, pet.dead;

/* drop the person.first_name since that's not summarized */
select pet.breed, pet.dead, count(dead)
    from person, person_pet, pet
    where person.id = person_pet.person_id and pet.id = person_pet.pet_id
    group by pet.breed, pet.dead;

select breed, dead, count(dead)
    from pet
    group by breed, dead;
