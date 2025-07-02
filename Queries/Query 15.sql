-- Question 15: What diseases are linked to the BRCA1 Protein?
SELECT d.Name
FROM Diseases d
JOIN ProteinDiseases pd USING (DiseaseID)
JOIN Proteins p USING (ProteinID)
WHERE p.Name = "BRCA1 Protein"