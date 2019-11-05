select person.first_name, person.last_name, cc
    from person,
        (select person_pet.person_id as dd , count(person_pet.pet_id) as cc
            from person_pet, pet
            where pet.dead = 0 and
                  person_pet.purchased_on < date('2018-01-01')
            group by person_pet.person_id)
    where person.id = dd
    order by cc desc;
