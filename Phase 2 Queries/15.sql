SELECT MIN(mag_size)
	FROM weapon W, archetype A, item T, is_a I
	WHERE A.name = 'pulse rifle' AND tier = 'legendary' AND 
		  W.name = I.name1 AND I.name2 = A.name AND 
		  W.name = T.name;