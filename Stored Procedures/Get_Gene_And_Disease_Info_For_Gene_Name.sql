-- Procedure 5: Link a gene to a disease
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS get_gene_and_disease_info_for_gene_name;

DELIMITER $$

CREATE PROCEDURE get_gene_and_disease_info_for_gene_name(
	GeneName VARCHAR(100)
)
BEGIN
    SELECT 
		g.OrganismID,
		g.Name AS "gene name",
        g.Functions AS "function of gene",
        d.Name AS "disease name",
        d.Description AS "disease describtion"
    FROM Genes g
    LEFT JOIN GeneDiseases USING (GeneID)
    LEFT JOIN Diseases d USING (DiseaseID)
    WHERE g.Name = GeneName;
END $$

DELIMITER ;