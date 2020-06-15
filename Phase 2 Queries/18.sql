SELECT COUNT(A.name)
	FROM armor A, item T
	WHERE tier = 'rare' AND A.name = T.name;