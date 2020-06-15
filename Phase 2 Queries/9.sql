SELECT T.*
	FROM item T, weapon W, armor A, slot S, has_a H
	WHERE ( T.name = W.name OR T.name = A.name ) AND
		  ( W.name = H.name1 OR A.name = H.name1 ) AND 
		  H.name2 = S.name
	GROUP BY S.name;