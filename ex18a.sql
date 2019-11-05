select person.first_name, person.last_name, ee
    from person, (select person_pet.person_id as ff, avg(cc) as ee
                    from person, person_pet, (select id as dd, avg(age) as cc
                                                from pet
                                                where dead = 1
                                                group by id)
                    where person_pet.pet_id = dd
                    group by person_pet.person_id)
    where person.id = ff;
