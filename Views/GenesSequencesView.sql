-- View 3: Genes and their sequences (via proteins).
USE Bioinformatics_Advanced_DB;
CREATE OR REPLACE VIEW GenesSequencesView AS
SELECT 
	g.Name AS "gene name",
	s.Sequence AS "gene sequence"
FROM Genes g
JOIN Proteins p USING (GeneID)
JOIN Sequences s USING (ProteinID)