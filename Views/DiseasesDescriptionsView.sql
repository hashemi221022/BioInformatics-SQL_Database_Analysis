-- View 9: Diseases and their descriptions.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW diseases_descriptions_view AS
SELECT 
	d.Name AS "disease name",
    d.Description
FROM Diseases d
