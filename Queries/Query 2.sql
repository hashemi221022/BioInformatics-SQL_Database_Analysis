-- Question 2: What are the functions of the genes in humans (Homo sapiens)?
SELECT 
	g.Name AS "Gene names",
    g.Functions
FROM Organisms o
JOIN Genes g USING (OrganismID)
WHERE o.name = "Homo sapiens"