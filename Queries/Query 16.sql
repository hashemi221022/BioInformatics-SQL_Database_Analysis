-- Question 16: Which researchers worked on experiments involving Saccharomyces cerevisiae genes?
SELECT DISTINCT e.Researcher
FROM Organisms o
JOIN Genes g USING (OrganismID)
JOIN GeneExperiments ge USING (GeneID)
JOIN Experiments e USING (ExperimentID)
WHERE o.Name = "Saccharomyces cerevisiae"