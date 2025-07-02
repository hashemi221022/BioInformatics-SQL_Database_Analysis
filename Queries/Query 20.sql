-- Question 20: What proteins are part of the DNA repair pathway?
SELECT 
	p.Name
FROM Proteins p
JOIN Genes g USING (GeneID)
WHERE g.Functions LIKE "%DNA repair%"