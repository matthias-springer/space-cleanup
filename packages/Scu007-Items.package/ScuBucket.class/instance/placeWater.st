actions
placeWater
	(ScuWater newFrom: self into: nil reaching: (self distance) dealing: self damage)
		checkOnto: self tileUnder.
