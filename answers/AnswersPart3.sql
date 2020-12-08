// What is each pokemon's primary type?

USE Pokemon;

SELECT name, primary_type
FROM pokemons

// -----------------------------
// What is Rufflet's secondary type?

USE Pokemon;

SELECT name, secondary_type
FROM pokemons
WHERE name = 'Rufflet'

// ------------------------------
// What are the names of the pokemon that belong to the trainer with trainerID 303?





// -------------------------------
// How many pokemon have a secondary type Poison

USE Pokemon;

SELECT COUNT(*)
FROM pokemons p
JOIN pokemons st ON p.name = st.secondary_type = 'Poison'

// ------------------------------------
//What are all the primary types and how many pokemon have that type?

USE Pokemon;

SELECT COUNT(p.name )
FROM pokemons p
JOIN types tp ON p.primary_type = tp.id
ORDER BY primary_type

// --------------------------------------
// How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer

USE Pokemon

SELECT pt.trainerID AS 'Trainer ID', COUNT(pt.pokelevel) as 'No. of Pokemon with at least level 100'
FROM pokemon_trainer pt
WHERE pokelevel = 100
GROUP BY pt.trainerID;

// ---------------------------------------
// How many pokemon only belong to one trainer and no other?

USE Pokemon;

SELECT COUNT(pt.pokemon_id) AS 'No. of Pokemon with one trainer'
FROM pokemon_trainer pt
WHERE pt.trainerID < 2