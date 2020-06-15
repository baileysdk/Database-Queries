SELECT W1.*
	FROM weapon W1, archetype A1, is_a I1
			 
	WHERE A1.name = 'smg' AND 
		  W1.name = I1.name1 AND I1.name2 = A1.name AND
		  W1.reload_speed IN ( Select W2.reload_speed FROM weapon W2, archetype A2, is_a I2
								   WHERE A2.name = 'smg' AND 
										 W2.name = I2.name1 AND I2.name2 = A2.name
								   GROUP BY reload_speed
								   HAVING MIN(W2.reload_speed) );