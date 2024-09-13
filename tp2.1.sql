CREATE (p1:Product {
  title: 'Product 1',
  description: 'description 1',
  price: 100,
  available: true,
  expedition: true,
})

CREATE (t1:Category {
  title: 'Category 1',
})

CREATE (c1:Customer {
  name: 'Jordan',
  email: 'joe@joe.com',
  createdAt: '2021-01-01',

})

CREATE 
  (p1)-[:HAS_CATEGORY]->(t1),
  (p2)-[:HAS_CATEGORY]->(t1),

