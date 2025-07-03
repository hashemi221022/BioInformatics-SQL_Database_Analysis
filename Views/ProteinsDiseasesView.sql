-- View 2: Proteins and their associated diseases.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW proteins_diseases_view AS
SELECT 
	p.Name AS "protein name",
	d.Name AS "disease name"
FROM Proteins p
JOIN ProteinDiseases pd USING (ProteinID)
JOIN Diseases d USING (DiseaseID)