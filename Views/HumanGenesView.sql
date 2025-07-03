-- View 4: List all human genes.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW human_genes_view AS
SELECT 
	g.Name AS "gene name",
    g.Functions
FROM Genes g
JOIN Organisms o USING (OrganismID)
WHERE o.Name = "Homo sapiens"