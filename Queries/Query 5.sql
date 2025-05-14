-- Question 5: Which diseases are associated with human genes?
SELECT d.Name AS "Disease name"
FROM Diseases d
JOIN GeneDiseases gd USING (DiseaseID)
JOIN Genes g USING (GeneID)
JOIN Organisms  o USING (OrganismID)
WHERE o.Name = "Homo sapiens"