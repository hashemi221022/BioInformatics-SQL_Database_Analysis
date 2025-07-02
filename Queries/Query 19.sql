-- Question 19: List all experiments and their dates.
SELECT 
	e.Name,
    e.Date
FROM Experiments e
ORDER BY e.Date