SELECT W1.*
	FROM weapon W1			
	WHERE W1.stability IN ( SELECT stability 
								FROM weapon
								GROUP BY stability
								HAVING MIN(stability) );