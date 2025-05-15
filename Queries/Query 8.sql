-- Question 8: What are the genetic variants of the BRCA1 gene? 
SELECT 
	v.VariantType,
	v.Description
FROM Genes g 
JOIN Variants v USING (GeneID)
WHERE g.Name = "BRCA1"
