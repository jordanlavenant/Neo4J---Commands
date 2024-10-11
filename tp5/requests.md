1. MATCH (d:Drinker)-[:Likes]->(b:Beer {name: 'Bohemia'})
   RETURN DISTINCT d.name
   UNION
   MATCH (d:Drinker)-[:Goes]->(c:Bar {city: 'Orleans'})
   RETURN DISTINCT d.name

2. MATCH (d:Drinker)-[:Likes]->(b1:Beer {name: 'Bohemia'}),
   (d)-[:Likes]->(b2:Beer {name: 'Corona'})
   RETURN DISTINCT d.name

3. MATCH (d:Drinker)-[:Likes]->(b:Beer),
   (d)-[:Goes]->(c:Bar)-[:Sells]->(b)
   RETURN DISTINCT d.name, b.name, c.name

4. MATCH (d:Drinker)-[:Likes]->(:Beer)
   RETURN AVG(d.age) AS average_age

5. MATCH (d:Drinker)
   RETURN d.sexe, AVG(d.age) AS average_age

6. MATCH (d:Drinker)
   WHERE d.age > 30
   RETURN d.sexe, AVG(d.age) AS average_age

7. MATCH (d:Drinker)-[:Likes]->(:Beer)
   RETURN MAX(d.age) AS max_age, MIN(d.age) AS min_age, AVG(d.age) AS average_age

8. MATCH (d:Drinker)
   OPTIONAL MATCH (d)-[:Goes]->(c:Bar)
   OPTIONAL MATCH (d)-[:Likes]->(b:Beer)
   RETURN d.name, COUNT(DISTINCT c) AS bars_count, COUNT(DISTINCT b) AS beers_count

9. MATCH (d:Drinker)-[:Likes]->(b:Beer)
   RETURN d.name, COLLECT(b.name) AS beers

10. MATCH (d:Drinker)-[:Likes]->(b:Beer)
    RETURN b.name, COUNT(d) AS drinkers_count

11. MATCH (d:Drinker)-[:Likes]->(b:Beer)
    RETURN b.name, COUNT(d) AS popularity
    ORDER BY popularity DESC
    LIMIT 1

12. MATCH (d:Drinker)-[:Likes]->(b:Beer)
    WITH b.name AS beer_name, COUNT(d) AS popularity
    WHERE popularity > 2
    RETURN beer_name, popularity

13. MATCH (d:Drinker)-[g:Goes]->(c:Bar)
    RETURN d.name, COUNT(DISTINCT c) AS bars_per_week

14. MATCH (d:Drinker)-[g:Goes]->(c:Bar)
    RETURN d.name, COUNT(g) \* 3 AS beers_consumed

15. MATCH (d:Drinker)-[g:Goes]->(c:Bar)
    RETURN d.name, COUNT(g) \* 3 AS beers_consumed
    ORDER BY beers_consumed DESC
    LIMIT 3

16. MATCH (d:Drinker)-[g:Goes]->(b:Bar)
    WHERE d.age >= 30
    WITH d, COUNT(g) \* 3 AS weekly_beer_consumption
    RETURN AVG(d.age) AS average_age, AVG(weekly_beer_consumption) AS average_weekly_beer_consumption

17. MATCH (b:Bar {city: 'Paris'})-[:Sells]->(beer:Beer {name: 'Corona'})
    WHERE NOT EXISTS {
    MATCH (b)-[:Sells]->(:Beer {name: 'Antarctica'})
    }
    RETURN DISTINCT b.name

18. MATCH (b:Bar)-[:Sells]->(beer:Beer {name: 'Corona'})
    WHERE NOT EXISTS {
    MATCH (b)-[:Sells]->(otherBeer:Beer)
    WHERE otherBeer.name <> 'Corona'
    }
    RETURN DISTINCT b.name

19. MATCH (d:Drinker)-[:Goes]->(b:Bar)-[:Sells]->(beer:Beer)
    WHERE NOT (d)-[:Likes]->(beer)
    RETURN DISTINCT d.name

20.
