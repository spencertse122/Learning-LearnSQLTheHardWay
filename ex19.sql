/* get a simple average for pet ages. */
select sum(age) / count(*) as average from pet;

/* compare it to the avg() function */
select avg(age) from pet;

-- get the average name length (anl) of pets
select avg(length(name)) as anl from pet;

-- get the avg() age rounded
select round(avg(age)) as average from pet;

-- get a random number
select random();

-- use modulus and abs() to make random 0-20
select abs(random() % 20);

-- use update to change all pet ages to random 0-20
update pet set age = abs(random() % 20) where dead = 0;

-- check that it changed (maybe)
select round(avg(age)) as average from pet;

-- use 0-50 as the range
update pet set age = abs(random() % 50) where dead = 0;

-- check the average again
select round(avg(age)) as average from pet;
