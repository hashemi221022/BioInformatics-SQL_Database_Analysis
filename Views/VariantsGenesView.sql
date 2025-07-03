-- View 10: Variants and their associated genes.
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW variants_genesView_view AS
SELECT 
	g.Name AS "gene name",
    v.VariantType,
    v.Description
FROM Genes g
JOIN Variants v USING (GeneID)
