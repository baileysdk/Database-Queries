SELECT DISTINCT(rpm)
	FROM weapon W, archetype A, is_a I
	WHERE A.name = 'machine gun' AND 
		  W.name = I.name1 AND I.name2 = A.name;