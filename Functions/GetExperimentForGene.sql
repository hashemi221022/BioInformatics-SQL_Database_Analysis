-- Function 5: The experiments for a specific gene
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_experiment_for_gene;

DELIMITER $$
CREATE FUNCTION get_experiment_for_gene (
 GeneName VARCHAR(100)
)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
	DECLARE gene_experiment VARCHAR(100) DEFAULT "Experiment not exist";
	SELECT 
		e.Name
	INTO gene_experiment
	FROM Genes g
	JOIN GeneExperiments ge USING(GeneID)
    JOIN Experiments e USING (ExperimentID)
    WHERE g.Name = GeneName;
	RETURN gene_experiment;
END $$