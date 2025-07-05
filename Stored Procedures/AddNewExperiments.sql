-- Procedure 3: Add a new experiment
USE Bioinformatics_Advanced_DB;
DROP PROCEDURE IF EXISTS add_new_experiment;

DELIMITER $$

CREATE PROCEDURE add_new_experiment(
	ExperimentName VARCHAR(100),
    ExperimentDate DATE,
    ResearcherName VARCHAR(100)
)
BEGIN
    INSERT INTO Experiments (Name, Date, Researcher)
    VALUES (ExperimentName, ExperimentDate, ResearcherName);
END $$

DELIMITER ;