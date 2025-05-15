-- Question 10: What is the taxonomy of organisms linked to the ACT1 gene?
SELECT 
	o.Name,
	o.Taxonomy
FROM Genes g
JOIN Organisms o USING (OrganismID)
WHERE g.Name = "ACT1"