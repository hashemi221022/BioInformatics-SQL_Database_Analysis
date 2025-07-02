-- Question 18: Which genetic variants are deletions?
SELECT 
	g.Name AS "gene name",
    v.Description
FROM Genes g
JOIN Variants v USING (GeneID)
WHERE v.VariantType = "deletion"