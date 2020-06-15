SELECT W.*
	FROM weapon W, frame F, has_a H
	WHERE W.name = H.name1 AND H.name2 = F.name
	GROUP BY F.name;