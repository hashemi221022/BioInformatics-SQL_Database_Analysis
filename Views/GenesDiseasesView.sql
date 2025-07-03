-- View 1: Genes and their associated diseases
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW genes_diseases_view AS
SELECT 
	g.Name AS "gene name",
	d.Name AS "disease name"
FROM Genes g
JOIN GeneDiseases gd USING (GeneID)
JOIN Diseases d USING (DiseaseID)