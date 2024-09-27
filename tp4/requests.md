1. MATCH (n:User)-[:FOLLOWS]->(m:Me) RETURN id(n), n.name

2. MATCH (n:User)-[:FOLLOWS]->(m:Me) RETURN n.location

3. MATCH (n:User WHERE n.location CONTAINS 'France')-[]->() RETURN n.name

4. MATCH (t:Tweet)-[:TAGS]->(h:Hashtag WHERE h.name CONTAINS 'apoc') return t

5. MATCH (n:User)-[p:POSTS]->(t:Tweet)-[u:USING]->(s:Source WHERE s.name CONTAINS 'Twitter Web App') return n.name

6. MATCH (n:User WHERE n.location CONTAINS 'England')-[]->() return 'England' as State, COUNT(n) as count

7. MATCH (neo4j:Me)-[p:POSTS]->(t:Tweet WHERE datetime(t.created_at).year = 2021 and datetime(t.created_at).month < 7) RETURN t

8. MATCH (neo4j:Me)-[:POSTS]->(t:Tweet)
   WITH datetime(t.created_at) AS created, t
   RETURN created.year AS year, created.month AS month, COUNT(t) AS tweet_count
   ORDER BY tweet_count DESC

9. MATCH (n:User) RETURN n ORDER BY n.followers DESC LIMIT 1

10. MATCH (neo4j:Me)-[p:POSTS]->(t:Tweet) return SUM(t.favorites)

11. MATCH (n:User WHERE n.name STARTS WITH 'E')-[]->() return n.name ORDER BY n.name

12. MATCH (n:USER WHERE NOT n.name ENDS WITH 'd')-[]->() RETURN n.name

13. MATCH (l:Link WHERE l.name =~ 'http.github')-[]->() return l

14.
