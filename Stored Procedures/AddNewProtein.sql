-- Procedure 9: Add a new protein
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS add_new_protein;

DELIMITER $$

CREATE PROCEDURE add_new_protein(
		GeneId INT,
        ProteinName VARCHAR(100),
        ProteinFanction VARCHAR(225)
)
BEGIN
    INSERT INTO Proteins (Name, GeneID, Functions)
    VALUES (ProteinName, GeneId,  ProteinFanction);
END $$

DELIMITER ;