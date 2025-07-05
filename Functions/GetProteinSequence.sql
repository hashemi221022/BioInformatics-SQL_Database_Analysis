-- Function 3: Get the sequence of a protein
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_protein_sequence;

DELIMITER $$

CREATE FUNCTION get_protein_sequence (
 ProteinName VARCHAR(100)
)
RETURNS TEXT
READS SQL DATA
BEGIN
	DECLARE sequence_of_protein TEXT DEFAULT "Sequence not exist";
	SELECT 
		s.Sequence
	INTO sequence_of_protein
	FROM Proteins p
	JOIN Sequences s USING(ProteinID)
    WHERE p.Name = ProteinName;
	RETURN sequence_of_protein;
END $$

DELIMITER ;