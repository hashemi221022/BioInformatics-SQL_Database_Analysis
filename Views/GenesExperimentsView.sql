-- View 5: Experiments conducted on genes.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW genes_experiments_view AS
SELECT 
	g.Name AS "gene name",
    e.Name AS "experiment",
    e.Date
FROM Genes g
JOIN GeneExperiments ge USING (GeneID)
JOIN Experiments e USING (ExperimentID)
ORDER BY e.Date
