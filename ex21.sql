-- test our query from Ex16
select pet.breed, pet.dead, count(dead)
    from person, person_pet, pet
    where person.id = person_pet.person_id and pet.id = person_pet.pet_id
    group by pet.breed, pet.dead;

-- create the view
create view dead_pets as
select pet.breed, pet.dead, count(dead) as total
    from person, person_pet, pet
    where person.id = person_pet. person_id and pet.id = person_pet.pet_id
    group by pet.breed, pet.dead;

-- try it
select * from dead_pets where total > 10;

-- get rid of the Cats to see if it changes dead_pets
delete from pet where breed = 'Cat';

-- see? it worked
select * from dead_pets;

-- drop it
drop view dead_pets;
