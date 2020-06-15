SELECT A1.*
	FROM armor A1
	WHERE A1.mobility IN ( SELECT mobility 
							   FROM armor
							   GROUP BY mobility
							   HAVING MAX(mobility) );