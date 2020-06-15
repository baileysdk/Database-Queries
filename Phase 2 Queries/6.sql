SELECT A.*
	FROM armor A, item T, has_a H, slot S
	WHERE tier = 'exotic' AND S.name = 'chest' AND 
		  A.name = T.name AND A.name = H.name1 AND H.name2 = S.name;