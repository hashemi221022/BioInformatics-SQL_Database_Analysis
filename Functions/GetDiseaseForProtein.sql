-- Function 6: Get diseases linked to a specific protein
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_disease_for_protein;

DELIMITER $$

CREATE FUNCTION get_disease_for_protein(
ProteinName VARCHAR(100)
)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
	DECLARE disease_protein VARCHAR(100) DEFAULT "Disease name not exist";
	SELECT 
		d.Name
	INTO disease_protein
	FROM Proteins p
	JOIN ProteinDiseases pd USING(ProteinID)
    JOIN Diseases d USING (DiseaseID)
    WHERE p.Name = ProteinName;
	RETURN disease_protein;
END $$

DELIMITER ;