/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon'; -- Find all animals whose name ends in "mon".

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01'; -- List the name of all animals born between 2016 and 2019.

SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3; -- List the name of all animals that are neutered and have less than 3 escape attempts.

