-- Procedure 1: Add a new gene
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS add_new_gene;

DELIMITER $$

CREATE PROCEDURE add_new_gene(
	GeneName VARCHAR(100),
    OrganismID INT,
    GeneFunction VARCHAR(255)
)
BEGIN
    INSERT INTO Genes  (Name, OrganismID, Functions) 
    VALUES (GeneName, OrganismID, GeneFunction);
END $$

DELIMITER ;