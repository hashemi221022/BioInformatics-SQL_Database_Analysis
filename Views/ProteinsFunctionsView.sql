-- View 8: Proteins and their functions.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW Proteins_functions_view AS
SELECT 
	p.Name AS "protein name",
    p.Functions
FROM Proteins p
