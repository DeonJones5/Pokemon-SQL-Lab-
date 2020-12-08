// What are all the types of pokemon that a pokemon can have?

SELECT *
FROM Pokemon.types
// -------------------------
// What is the name of the pokemon with id 45?

USE Pokemon;

SELECT *
FROM pokemons
WHERE id = 45

// ---------------------------
// How many pokemon are there?

USE Pokemon;

SELECT COUNT(*)
FROM pokemons

// -------------------------
// How many types are there?

USE Pokemon;

SELECT COUNT(*)
FROM types

// ----------------------------
// How many pokemon have a secondary type?

USE Pokemon;

SELECT COUNT(*)
FROM pokemons
WHERE secondary_type IS NOT NULL





