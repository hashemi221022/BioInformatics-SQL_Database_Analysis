-- View 7: Genes and their associated organisms.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW genes_organisms_view AS
SELECT 
	g.Name AS "gene name",
    o.Name AS "organism name"
FROM Genes g
JOIN Organisms o USING (OrganismID)
