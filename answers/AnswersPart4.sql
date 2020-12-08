// Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest
// to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.

SELECT p.name AS 'Pokemon Name',
				t.trainername AS 'Trainer Name',
                pt.pokelevel AS 'Level',
                t1.name AS 'Primary Type',
                t2.name AS 'Secondary Type',
                pt.defense AS 'Defense'

FROM pokemon_trainer pt
LEFT OUTER JOIN trainers t ON t.trainerID = pt.trainerID
LEFT OUTER JOIN pokemons p ON p.id = pt.pokemon_id
LEFT OUTER JOIN types t1 ON t1.id = p.primary_type
LEFT OUTER JOIN types t2 ON t2.id = p.secondary_type
ORDER BY pt.pokelevel DESC, pt.defense DESC