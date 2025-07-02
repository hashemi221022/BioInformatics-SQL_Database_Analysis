-- Question 12: Which genes are involved in the Lactose Operon Study?
SELECT g.Name
FROM Genes g
JOIN GeneExperiments ge USING (GeneID)
JOIN Experiments e USING (ExperimentID)
WHERE e.Name = "Lactose Operon Study"