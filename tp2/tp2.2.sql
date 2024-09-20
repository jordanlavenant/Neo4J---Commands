MATCH ()-[r:DIRECTED]->() DELETE r;
MATCH (n:Director) DELETE n;
MATCH (n:Movie) DELETE n;
MATCH (n:Person) DELETE n;

LOAD CSV WITH HEADERS FROM 'file:///Movie.csv' AS movie
WITH movie WHERE movie.boxOffice IS NOT NULL AND movie.class IS NOT NULL
WITH toInteger(movie.idMovie) AS idMovie,
movie.movieName AS movieName,
movie.class AS class,
movie.year AS year,
movie.director AS director

MERGE (m:Movie {idMovie: idMovie, title: movieName, class: class, year: year})
WITH m, director
MERGE (d:Director {name: director})
MERGE (d)-[:DIRECTED]->(m)