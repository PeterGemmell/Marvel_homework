
DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters(
  id SERIAL PRIMARY KEY, -- Added in id to distinguish the multiples i.e the storm troopers.
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers(
  id SERIAL PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL, -- a constraint where these values must be included.
  colour VARCHAR(255) NOT NULL,
  character_id INT REFERENCES characters(id) --character id would be the column name it refrences ie characters in the table above
  -- and id which pairs with the characters id above.
);

INSERT INTO characters (name, darkside, age)
VALUES ('Obi-Wan kenobi', false, 27);
INSERT INTO characters (name, darkside, age)
VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age)
VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside)
VALUES('Yoda', false);

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green',
'palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red',
'gold', 2);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('Purple',
'titanium', 2);
-- INSERT INTO lightsabers (colour) VALUES ('red');

SELECT * FROM lightsabers WHERE character_id = 2;
SELECT * FROM characters WHERE id = 2;


--
-- -- SELECT * FROM characters;
-- -- SELECT name FROM characters;
-- -- SELECT COUNT(*) FROM characters;
--
-- UPDATE characters SET darkside = true;
--
-- UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker';
--
-- UPDATE characters SET (name, darkside) = ('Darth Vadar', true)
-- WHERE name = 'Anakin Skywalker';
-- -- I want to update a character and set the name and darkside to darth vadar and
-- -- true where the name is Anakin Skywalker. Essentially replacing Anakin.
--
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Luke Skywalker', false, 19);
-- --Inserting a new character with details into the table.
--
-- UPDATE characters SET age = 56 WHERE name = 'Obi-Wan kenobi';
-- -- you want to update a charter and set the age to 56 where the name of said
-- --character is Obi Wan kenobi.
--
-- -- SELECT * FROM characters;
--
--
-- DELETE FROM characters WHERE name = 'Darth Maul';
-- -- deletes said character from the table.
--
-- SELECT * FROM characters;
--
--
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Storm Trooper', true, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Storm Trooper', true, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Storm Trooper', true, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Storm Trooper', true, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Storm Trooper', true, 25);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Storm Trooper', true, 25);
--
-- SELECT * FROM characters; -- * represents everything. Select everything from characters.
--
-- UPDATE characters SET age = 26 WHERE id =8; --moved to the bottom of the table
-- --as it was the last one updated.
--
-- SELECT * FROM characters;
