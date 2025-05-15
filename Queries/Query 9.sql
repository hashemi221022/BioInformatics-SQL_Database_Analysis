-- Question 9: Which proteins are linked to the Lactose Intolerance disease?
SELECT p.Name AS "Protein Name"
FROM Proteins p
JOIN ProteinDiseases pd USING (ProteinID)
JOIN Diseases d USING (DiseaseID)
WHERE d.Name = 'Lactose Intolerance'
