instance creation
newFrom: aBucket into: aDirection reaching: aDistance dealing: anAmount
	^ (ScuWater newIn: aBucket game)
		bucket: aBucket;
		direction: aDirection;
		distance: aDistance;
		damage: anAmount;
		yourself
	