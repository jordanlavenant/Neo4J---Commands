    CREATE
    (u1:USER {name: "Hannah", age: 30}),
    (u2:USER {name: "Bernd", age: 25}),
    (u3:USER {name: "Charlie", age: 35}),
    (u4:USER {name: "David", age: 28}),
    (u5:USER {name: "Eve", age: 32}),
    (u6:USER {name: "Alice", age: 27}),
    (u7:USER {name: "Bob", age: 29}),
    (u8:USER {name: "Oak", age: 31}),

    (c1:COMPANY {name: "TechCorp"}),
    (c2:COMPANY {name: "InnovateX"}),
    (c3:COMPANY {name: "GreenEnergy"}),
    (c4:COMPANY {name: "CloudNet"}),

    (u1)-[:WORKS_FOR]->(c1),
    (u2)-[:WORKS_FOR]->(c1),
    (u3)-[:WORKS_FOR]->(c1),
    (u4)-[:WORKS_FOR]->(c3),
    (u5)-[:WORKS_FOR]->(c4),
    (u6)-[:WORKS_FOR]->(c2),
    (u7)-[:WORKS_FOR]->(c3),
    (u8)-[:WORKS_FOR]->(c4),

    (t1:TOPIC {name: "Java"}),
    (t2:TOPIC {name: "Graphes"}),
    (t3:TOPIC {name: "Voitures"}),
    (t4:TOPIC {name: "Medecine"}),
    (t5:TOPIC {name: "REST"}),
    (t6:TOPIC {name: "Green Tech"}),
    (t7:TOPIC {name: "Web Development"}),
    (t8:TOPIC {name: "Machine Learning"}),
    (t9:TOPIC {name: "Cloud Computing"}),
    (t10:TOPIC {name: "AR/VR"}),



    (u1)-[:INTERESTED_IN]->(t1),
    (u1)-[:INTERESTED_IN]->(t2),
    (u1)-[:INTERESTED_IN]->(t5),

    (u2)-[:INTERESTED_IN]->(t2),
    (u2)-[:INTERESTED_IN]->(t5),

    (u3)-[:INTERESTED_IN]->(t2),
    (u3)-[:INTERESTED_IN]->(t3),
    (u3)-[:INTERESTED_IN]->(t4),

    (u4)-[:INTERESTED_IN]->(t5),
    (u5)-[:INTERESTED_IN]->(t6),  
    (u6)-[:INTERESTED_IN]->(t7),
    (u7)-[:INTERESTED_IN]->(t8),
    (u8)-[:INTERESTED_IN]->(t9),
    (u2)-[:INTERESTED_IN]->(t10),

    (p1:PROJECT {name: "AI Research"}),
    (p2:PROJECT {name: "Blockchain for Supply Chain"}),
    (p3:PROJECT {name: "Cyber Defense Platform"}),
    (p4:PROJECT {name: "Data Analysis Pipeline"}),

    (u1)-[:WORKS_ON]->(p1),
    (u3)-[:WORKS_ON]->(p1),
    (u2)-[:WORKS_ON]->(p2),
    (u4)-[:WORKS_ON]->(p2),
    (u5)-[:WORKS_ON]->(p3),
    (u6)-[:WORKS_ON]->(p3),
    (u7)-[:WORKS_ON]->(p4),
    (u8)-[:WORKS_ON]->(p4),

    (u4)-[:WORKS_ON]->(p1),
    (u5)-[:WORKS_ON]->(p2)
