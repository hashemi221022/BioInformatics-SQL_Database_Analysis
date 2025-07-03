-- View 6: Experiments conducted on proteins.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW proteins_experiments_view AS
SELECT 
	p.Name AS "protein name",
    e.Name AS "experiment",
    e.Date
FROM Proteins p
JOIN ProteinExperiments pe USING (ProteinID)
JOIN Experiments e USING (ExperimentID)
ORDER BY e.Date
