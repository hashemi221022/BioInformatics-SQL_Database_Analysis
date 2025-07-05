-- Function 4: Get organism taxonomy by gene name
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_organism_taxonomy_by_gene;

DELIMITER $$

CREATE FUNCTION get_organism_taxonomy_by_gene(
GeneName VARCHAR(100)
)

RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE organism_taxonomy VARCHAR(255) DEFAULT "Taxonomy not exist";
    SELECT o.Taxonomy 
    INTO organism_taxonomy
    FROM Genes g
    JOIN Organisms o USING (OrganismID)
    WHERE g.Name = GeneName;
    RETURN organism_taxonomy;
END $$

DELIMITER ;