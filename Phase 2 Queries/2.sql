SELECT W.*
	FROM weapon W, archetype A, is_a I
	WHERE A.name = 'hand cannon' AND 
		  W.name = I.name1 AND I.name2 = A.name AND
		  W.range >= '60';