## NEO4J - Commands

## Connect to VM :

En ssh :  
`   `

## Start the Neo4J server :

`sudo neo4j start `

## Stop the Neo4J server :

`sudo neo4j stop`

## Create ssh tunnels :

`ssh -L 7474:172.16.2.XXX:7474 -L 7687:172.16.2.XXX:7687 -N o22201676@acces-tp.iut45.univ-orleans.fr`  
CTRL + Z  
`bg`

## Go the the database browser :

[localhost:7474](localhost:7474)

## Connect to the Neo4J server :

> Username : `neo4j`  
> Password : `neo4jpw4neo4j`

## Visualize graph

`MATCH (n)-[r]->() RETURN n`

## Delete data

`MATCH (n) DETACH DELETE n`
