-- Procedure 4: Add a new organism
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS add_new_organism;

DELIMITER $$

CREATE PROCEDURE add_new_organism(
	OrganismName VARCHAR(100),
	OrganismTaxonomy VARCHAR(255)
)
BEGIN
    INSERT INTO Organisms (Name, Taxonomy)
    VALUES (OrganismName, OrganismTaxonomy);
END $$

DELIMITER ;