SELECT MAX(W.range)
	FROM weapon W, archetype A, is_a I
	WHERE damage_type = 'kinetic' AND 
		  W.name = I.name1 AND I.name2 = A.name
	GROUP BY A.name;