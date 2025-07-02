-- Question 11: List all diseases linked to genetic variants.
SELECT d.Name
FROM Diseases d
JOIN GeneDiseases USING (DiseaseID)
JOIN Variants USING (GeneID)