-- Question 7: List all experiments conducted by Dr. Smith. 
SELECT 
	Name AS 'Experiment Name',
    Researcher AS 'Researcher Name'
FROM Experiments
WHERE Researcher = 'Dr. Smith'
