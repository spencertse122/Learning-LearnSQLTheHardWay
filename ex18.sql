/* select the average age of every person */
select avg(age) from person;

/* select the average abe of every pet */
select avg(age) from pet;

/* select the average age of every breed by dead or alive */
select breed, dead, avg(age) from pet group by breed, dead;


select sum(age) from person;

select sum(age) from pet;

select breed, sum(dead), sum(age) from pet where dead = 1 group by breed, dead;


select min(age), max(age) from person;

select min(age), max(age) from pet;

select breed, dead, min(age), max(age) from pet
    where age > 0
    group by breed, dead;
