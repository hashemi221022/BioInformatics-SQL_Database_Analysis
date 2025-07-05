-- Function 10: Get the organism of specific gene
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_organism_for_gene;

DELIMITER $$

CREATE FUNCTION get_organism_for_gene(
GeneName VARCHAR(100)
)

RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
    DECLARE organism_name VARCHAR(100) DEFAULT "Organism not exist";
    SELECT 
		o.Name 
    INTO organism_name
    FROM Genes g
    JOIN Organisms o USING (OrganismID)
    WHERE g.Name = GeneName;
    RETURN organism_name;
END $$

DELIMITER ;