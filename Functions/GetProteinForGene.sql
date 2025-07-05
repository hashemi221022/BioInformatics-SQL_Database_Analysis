-- Function 8: The proteins linked to a specific gene
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_protein_for_gene;

DELIMITER $$

CREATE FUNCTION get_protein_for_gene(
GeneName VARCHAR(100)
)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
    DECLARE protein_for_gene VARCHAR(100) DEFAULT "Protein not exist";
    SELECT
		p.Name
    INTO protein_for_gene
    FROM Proteins p
    JOIN Genes g USING (GeneID)
    WHERE g.Name = GeneName;
    RETURN protein_for_gene;
END $$

DELIMITER ;