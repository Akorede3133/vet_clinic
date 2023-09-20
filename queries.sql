/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon'; -- Find all animals whose name ends in "mon".

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31'; -- List the name of all animals born between 2016 and 2019.

SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3; -- List the name of all animals that are neutered and have less than 3 escape attempts.

SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu'); --List the date of birth of all animals named either "Agumon" or "Pikachu".

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5; --List name and escape attempts of animals that weigh more than 10.5kg

SELECT * FROM animals WHERE neutered = TRUE; --Find all animals that are neutered.

SELECT * FROM animals WHERE name != 'Gabumon'; --Find all animals not named Gabumon.

SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3; --Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)

/* 
Inside a transaction update the animals table 
by setting the species column to unspecified. 
Verify that change was made. Then roll back 
the change and verify that the species 
columns went back to 
the state before the transaction.
*/
BEGIN;
UPDATE animals
SET species = 'unspecified';

ROLLBACK;

/*
Update the animals table by setting the 
species column to digimon for all 
animals that have a name ending in mon.
*/

BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

/*
Update the animals table by setting 
the species column to pokemon for all 
animals that don't have species already set.
*/
BEGIN;

UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;

COMMIT;

/*
Inside a transaction delete all records in the animals table, 
then roll back the transaction.
*/
BEGIN;

DELETE FROM animals;
ROLLBACK;

-- Delete all animals born after Jan 1st, 2022.

BEGIN;

DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT DELETEDATE2022;


-- Update all animals' weight to be their weight multiplied by -1.
UPDATE animals
SET weight_kg = weight_kg * -1;

-- Rollback to the savepoint
ROLLBACK TO DELETEDATE2022;

-- Update all animals' weights that are negative to be their weight multiplied by -1.
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

-- Commit transaction
COMMIT;

-- How many animals are there?
SELECT COUNT(*) FROM animals;

-- How many animals have never tried to escape?
SELECT COUNT(*) FROM animals
WHERE escape_attempts = 0;

-- What is the average weight of animals?
SELECT AVG(weight_kg) FROM animals;

-- Who escapes the most, neutered or not neutered animals?

-- Average of escape attempts by neutered
SELECT neutered, AVG(escape_attempts) FROM animals
GROUP BY neutered
HAVING neutered = TRUE;

-- Average of escape attempts by not neutered
SELECT neutered as NOT_NEUTERED, AVG(escape_attempts) FROM animals
GROUP BY neutered
HAVING neutered = FALSE;

-- What is the minimum and maximum weight of each type of animal?

SELECT species, MAX(weight_kg), MIN(weight_kg)
FROM animals
GROUP BY species;

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?

-- Neutered the average number of escape attempts
SELECT neutered, AVG(escape_attempts) AS AVG_OF_ESCAPE
FROM animals
WHERE neutered = TRUE AND date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY neutered;

-- Not neutered the average number of escape attempts
SELECT neutered as NOT_NEUTERED, AVG(escape_attempts) AS AVG_OF_ESCAPE
FROM animals
WHERE neutered = FALSE AND date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY neutered;


-- What animals belong to Melody Pond?
SELECT full_name, name FROM animals
JOIN owners
ON owners.id = animals.owner_id
WHERE full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).
SELECT animals.name FROM animals
JOIN species
ON species.id = animals.species_id
WHERE species.name = 'Pokemon';