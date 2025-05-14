-- Question 3: List all proteins associated with diseases.
SELECT 
	p.name AS "Protein names",
	d.name AS "Disease names"
FROM Proteins p
JOIN ProteinDiseases USING (ProteinID)
JOIN Diseases  d USING (DiseaseID)