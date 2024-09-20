1. MATCH (d:Drinker)-[]->() RETURN d

2. MATCH (d:Drinker)-[]->() RETURN d.name

3. MATCH (d:Drinker)
   RETURN id(d) AS identifier, d.name

4. MATCH (d:Drinker)-[r:FriendOf]->(t:Drinker) RETURN d, t, r

5. MATCH (d:Drinker)-[r:FriendOf]->(t:Drinker) RETURN id(r)

6. MATCH (d:Drinker)-[r:FriendOf*]->(t:Drinker) RETURN d.name, t.name

7. MATCH (b:Beer WHERE b.type = 'pilsen')-[r]-() RETURN b.name

8. MATCH (d:Drinker)-[r:FriendOf*]->(t:Drinker WHERE id(t) <> id(d)) RETURN d.name, t.name

9. MATCH (d:Drinker)-[r:Likes]->(b:Beer WHERE b.name = 'Corona') return d.name

10. MATCH (b:Bar WHERE b.city = 'Paris')-[]->() return b

11. MATCH (b:Bar WHERE b.city = 'Paris')-[s:Sells]->(t:Beer WHERE t.name = 'Corona') return b, t, s

12. MATCH (b:Bar WHERE b.city = 'Paris')-[s:Sells]->(t:Beer WHERE t.name = 'Corona' or t.name = 'Antarctica') return b, t, s

13. MATCH (d:Drinker WHERE d.sexe = 'F')-[g:Goes]->(b:Bar WHERE b.city = 'Paris') return d.name

14. MATCH (d:Drinker)-[g:Goes]->(b:Bar)
    WHERE d.sexe = 'F' AND b.city = 'Paris'
    WITH d
    MATCH (d)-[l:Likes]->(beer:Beer)
    WHERE beer.name = 'Bohemia'
    RETURN d.name

15. WITH 'rating_hygiene' as hygiene, 'rating_service' as service
    MATCH (b:Bar)
    WHERE b[toLower(hygiene)] > 3 OR b[toLower(service)] > 3
    RETURN DISTINCT b

16. WITH 'rating_hygiene' as hygiene, 'rating_service' as service
    MATCH (b:Bar) RETURN b.name, (b[hygiene]+b[service])/2

17. WITH 'rating_hygiene' as hygiene, 'rating_service' as service
    MATCH (b:Bar) WHERE (b[hygiene]+b[service])/2 > 4 RETURN DISTINCT b.name

18. MATCH (d:Drinker) RETURN d.name, d.age, d.sexe ORDER BY d.age, d.sexe

19. MATCH (d:Drinker)-[g:Goes]->(b:Bar) RETURN d.name, b.name, g.startYear ORDER BY g.startYear

20. MATCH (d:Drinker)-[g:Goes]->(b:Bar) WHERE g.startYear >= 2022 RETURN d ORDER BY g.startYear

21. MATCH (d:Drinker)-[g:Goes]->(b:Bar)<-[h:Goes]-(t:Drinker) RETURN d.name, t.name, b.name

22. MATCH (d:Drinker)-[f:FriendOf]->(t:Drinker)-[l:Likes]->(b:Beer WHERE b.name = 'Antarctica') return d.name

23. MATCH (d:Drinker)-[f:FriendOf]->(t:Drinker)-[g:Goes]->(b:Bar WHERE b.name = 'Brasil') RETURN d.name

24. MATCH (d:Drinker)-[g:Goes]->(b:Bar)
    WHERE b.name = 'Brasil'
    WITH d
    MATCH path = (d)-[:FriendOf*]->(friend)
    RETURN d.name, friend.name, path

25. MATCH (d:Drinker WHERE d.name =~ 'B.b') RETURN d
