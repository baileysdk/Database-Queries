SELECT W1.*
	FROM weapon W1 
	WHERE W1.handling IN ( SELECT handling 
				      FROM weapon
				      GROUP BY handling
				      HAVING AVG(handling) );