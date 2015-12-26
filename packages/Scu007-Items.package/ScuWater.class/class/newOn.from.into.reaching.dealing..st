instance creation
newOn: aTile from: aBucket into: aDirection reaching: aDistance dealing: anAmount
	^ (ScuWater newIn: aTile game)
		bucket: aBucket;
		direction: aDirection;
		distance: aDistance;
		damage: anAmount;
		yourself      