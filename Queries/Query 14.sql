-- Question 14: Which genes are linked to the Breast Cancer disease?
SELECT g.Name
FROM Genes g
JOIN GeneDiseases gd  USING (GeneID)
JOIN Diseases d USING (DiseaseID)
WHERE d.Name = "Breast Cancer"