-- Question 13: What are the functions of proteins in E. coli?
SELECT 
	o.Name AS "organism name",
    p.Name AS "protein name",
    p.Functions AS "functions"

FROM Genes g
JOIN Proteins p  USING (GeneID)
JOIN Organisms o USING (OrganismID)
WHERE o.Name = "Escherichia coli"