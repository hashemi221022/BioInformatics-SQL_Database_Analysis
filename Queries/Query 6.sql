  -- Question 6: What are the sequences of proteins involved in diseases?
SELECT 
	p.Name AS "Protein Name",
    s.Sequence AS "Disease Sequence"
FROM Sequences s
JOIN Proteins p USING (ProteinID)
JOIN ProteinDiseases USING (ProteinID)
JOIN Diseases USING (DiseaseID)
