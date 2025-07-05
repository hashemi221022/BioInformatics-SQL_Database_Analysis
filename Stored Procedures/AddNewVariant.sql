-- Procedure 8: Add a new variant
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS add_new_variant;

DELIMITER $$

CREATE PROCEDURE add_new_variant(
		GeneId INT,
        VariantType VARCHAR(100),
        VariantDescription TEXT
)
BEGIN
    INSERT INTO Variants (GeneID, VariantType, Description)
    VALUES (GeneId, VariantType, VariantDescription);
END $$

DELIMITER ;