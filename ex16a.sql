-- -- select person.first_name, person.last_name, count(person_pet.pet_id)
-- --     from person, person_pet
-- --     where person.id = person_pet.person_id
-- --     group by person.first_name, person.last_name;
--
-- select person.first_name, person.last_name, count(person_pet.pet_id)
--     from person, person_pet
--     where person.id = person_pet.person_id and
--           (Select count(pet_id) from person_pet group by person_id) > 1
--     group by person.first_name, person.last_name;





-- select person_id, count(pet_id) from person_pet group by person_id;






select person.first_name, person.last_name, picture.total
    from person, (select person_id, count(pet_id) as total from person_pet group by person_id) as picture
    where total > 2 and
          person.id = picture.person_id;
