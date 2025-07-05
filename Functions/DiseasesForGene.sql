-- Function 1: The name of diseases linked to a gene
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS diseases_for_Gene;

DELIMITER $$
CREATE FUNCTION diseases_for_Gene (
 GeneName VARCHAR(100)
)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
	DECLARE disease_name VARCHAR(100) DEFAULT "disease not exist";
	SELECT 
		d.Name
	INTO disease_name
	FROM Genes g
	JOIN GeneDiseases gd USING(GeneID)
    JOIN Diseases d USING (DiseaseID)
    WHERE g.Name = GeneName;
	RETURN disease_name;
END $$
