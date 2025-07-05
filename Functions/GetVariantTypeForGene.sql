-- Function 9: Get the variant type for a gene
USE Bioinformatics_Advanced_DB;
DROP FUNCTION IF EXISTS get_variant_type_for_gene;

DELIMITER $$

CREATE FUNCTION get_variant_type_for_gene(
GeneName VARCHAR(100)
)
RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
    DECLARE variant_type VARCHAR(50) DEFAULT "Variant type not exist";
    SELECT
		v.VariantType
    INTO variant_type
    FROM Genes g
    JOIN Variants v USING (GeneID)
    WHERE g.Name = GeneName;
    RETURN variant_type;
END $$

DELIMITER ;