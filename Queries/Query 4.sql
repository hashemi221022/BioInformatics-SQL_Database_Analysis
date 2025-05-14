-- Question 4: What experiments involve the BRCA1 gene?
SELECT 
	e.Name AS "Exprement name",
	e.Date,
	e.Researcher AS "Researcher name"
FROM Genes g
JOIN GeneExperiments ge USING(GeneID)
JOIN Experiments e USING (ExperimentID)
WHERE g.Name = "BRCA1"