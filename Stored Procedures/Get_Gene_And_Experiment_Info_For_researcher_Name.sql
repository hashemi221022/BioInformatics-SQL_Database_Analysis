-- Procedure 9: Link a researcher to a gene
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS get_gene_and_experiment_info_for_researcher_name;

DELIMITER $$

CREATE PROCEDURE get_gene_and_experiment_info_for_researcher_name(
	ResearcherName VARCHAR(100)
)
BEGIN
    SELECT 
		g.OrganismID,
		g.Name AS "gene name",
        g.Functions AS "function of gene",
        e.Name AS "expriment name",
        e.Date,
        e.Researcher
    FROM Genes g
    LEFT JOIN GeneExperiments ge USING (GeneID)
    LEFT JOIN Experiments e USING (ExperimentID)
    WHERE e.Researcher = ResearcherName;
END $$

DELIMITER ;