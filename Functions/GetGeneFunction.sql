-- Function 7: Get the function of a specific gene.

USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_gene_function;

DELIMITER $$

CREATE FUNCTION get_gene_function(
GeneName VARCHAR(100)
)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
    DECLARE gene_function VARCHAR(255) DEFAULT "Function not exist";
    SELECT 
		g.Functions
    INTO gene_function
    FROM Genes g
    WHERE g.Name = GeneName;
    RETURN gene_function;
END $$

DELIMITER ;