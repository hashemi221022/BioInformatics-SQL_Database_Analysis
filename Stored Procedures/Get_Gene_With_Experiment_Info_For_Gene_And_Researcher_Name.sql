-- Procedure 10: Link an experiment to a protein
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS get_gene_with_experiment_info_for_gene_and_researcher_name;

DELIMITER $$

CREATE PROCEDURE get_gene_with_experiment_info_for_gene_and_researcher_name(
	ResearcherName VARCHAR(100),
    GeneName VARCHAR(100)
)
BEGIN
    SELECT 
		g.OrganismID,
		g.Name,
        g.Functions,
        e.Name,
        e.Date,
        e.Researcher
    FROM Genes g
    LEFT JOIN GeneExperiments ge USING (GeneID)
    LEFT JOIN Experiments e USING (ExperimentID)
    WHERE e.Researcher = IFNULL(ResearcherName, e.Researcher) AND  g.Name = IFNULL(GeneName, g.Name);
END$$

DELIMITER ;