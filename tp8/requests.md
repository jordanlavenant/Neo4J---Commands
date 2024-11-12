## TP8 - Neo4j

1. Afficher tous les trajets au départ d'Orleans. Informer leur longeur et la station d'arrivee

   MATCH (orleans:STATION {name: "Orleans"})-[r:byTrain]->(destination:STATION)
   RETURN destination.name AS destination, r.cp AS length

2. Afficher la liste des stations que nous pouvons atteindre à partir d'Orleans, avec un trajet direct. Indiquez l'heure de départ pour
   ce voyage

   MATCH (orleans:STATION {name: "Orleans"})-[r:byTrain]->(destination:STATION)
   RETURN destination.name AS destination, r.HDep AS departure_time

3. Afficher la liste des stations que nous pouvons atteindre à partir d'Orleans, avec un trajet NONdirect. Indiquez l'heure de départ pour
   ce voyage, le nb d'arrets et les arrets...

4. IDEM mais améliorer : sans passer par la meme ville

5. Trajets a partir d'un ville x vers Paris en passant par Orléans.
   Afficher les heures depart et arrivee

6. AVEC LE HORAIRES
