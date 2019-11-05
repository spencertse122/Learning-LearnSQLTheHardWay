SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > (SELECT age FROM person WHERE first_name = "Spencer");

SELECT breed FROM pet WHERE name = "Charlie" AND age > 0;

SELECT * from pet WHERE age > 10 OR dead = 1;
