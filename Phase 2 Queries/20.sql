SELECT COUNT(W.name)
	FROM weapon W, slot S, has_a H
	WHERE S.name = 'power' AND W.damage_type = 'solar' AND 
		  W.name = H.name1 AND H.name2 = S.name;