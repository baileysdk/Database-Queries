SELECT weapon.*
	FROM item, weapon
	WHERE tier = 'legendary' AND item.name = weapon.name;