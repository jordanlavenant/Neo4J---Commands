CREATE (n2:Movie {title: 'Unforgiven'})
CREATE (n1:Person {name: 'Clint Eastwood', gender: 'male'})
CREATE (n3:Person {name: 'Anna Levine', gender: 'female'})

CREATE 
  (n1)-[:ACTED_IN  {roles: 'Bill'}]->(n2),
  (n3)-[:ACTED_IN  {roles: 'Delilah'}]->(n2),
  (n1)-[:DIRECTED]->(n2)

-- tp1 values

CREATE (n4:Movie {title: 'Dr. Strangelover'})
CREATE (n5:Person {name: 'Peter Seller', gender: 'male'})

CREATE 
  (n5)-[:ACTED_IN  {roles: 'Lionel Mendrake', screentime: 18}]->(n4),
  (n5)-[:ACTED_IN  {roles: 'Merkin Muffley', screentime: 34}]->(n4)

