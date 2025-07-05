-- Procedure 6: Link a protein to a disease
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS get_protein_and_disease_info_for_protein_name;

DELIMITER $$

CREATE PROCEDURE get_protein_and_disease_info_for_protein_name(
	ProteinName VARCHAR(100)
)
BEGIN
    SELECT 
		p.ProteinID,
		p.Name,
        p.Functions AS "function of protein",
        d.Name AS "disease name",
        d.Description AS "disease describtion"
    FROM Proteins p
    LEFT JOIN ProteinDiseases USING (ProteinID)
    LEFT JOIN Diseases d USING (DiseaseID)
    WHERE p.Name = ProteinName;
END $$

DELIMITER ;