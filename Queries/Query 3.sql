-- Question 3: List all proteins associated with diseases.
SELECT name AS "Protein names"
FROM Proteins
JOIN ProteinDiseases USING (ProteinID)