-- Find the first owner that has a last name containing the lowercase letter "r"
-- Your code here
SELECT * FROM owners WHERE last_name LIKE "%r" LIMIT 1;

-- Find the name and birth year of all the cats ordered by descending birth year
-- Your code here
SELECT name, birth_year FROM cats ORDER BY birth_year DESC;

-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT cats.name FROM cats
JOIN cat_owners ON (cats.id = cat_owners.cat_id)
JOIN owners ON (owners.id = cat_owners.owner_id)
WHERE owners.first_name LIKE 'H%';

-- Find the first and last names of the owner whose cats are born after the year 2015
SELECT owners.first_name, owners.last_name FROM cats
JOIN cat_owners ON (cats.id = cat_owners.cat_id)
JOIN owners ON (owners.id = cat_owners.owner_id)
WHERE cats.birth_year > 2015;

-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
SELECT cats.name FROM cats
JOIN cat_owners ON (cats.id = cat_owners.cat_id)
JOIN owners ON (owners.id = cat_owners.owner_id)
WHERE owners.first_name IN ('George', 'Melynda')
AND owners.last_name IN ('Beatty', 'Abshire');
