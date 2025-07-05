-- Function 2: The description of diseases linked to a gene
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS disease_Description_for_gene;

DELIMITER $$
CREATE FUNCTION disease_Description_for_Gene (
 GeneName VARCHAR(100)
)
RETURNS TEXT
READS SQL DATA
BEGIN
	DECLARE disease_Description_for_Gene TEXT DEFAULT "Description not exist";
	SELECT 
		d.Description
	INTO disease_Description_for_Gene
	FROM Genes g
	JOIN GeneDiseases gd USING(GeneID)
    JOIN Diseases d USING (DiseaseID)
    WHERE g.Name = GeneName;
	RETURN disease_Description_for_Gene;
END $$
