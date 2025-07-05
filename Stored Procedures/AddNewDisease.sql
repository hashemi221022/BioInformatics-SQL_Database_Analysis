-- Procedure 2: Add a new disease
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS add_new_disease;

DELIMITER $$

CREATE PROCEDURE add_new_disease(
		DiseaseName VARCHAR(100),
        DiseaseDescription TEXT
)
BEGIN
    INSERT INTO Diseases (Name, Description)
    VALUES (DiseaseName, DiseaseDescription);
END $$

DELIMITER ;