SELECT W.*
	FROM weapon W, archetype A, is_a I
	WHERE A.name = 'auto rifle' AND 
		  W.name = I.name1 AND I.name2 = A.name
	GROUP BY W.rpm;