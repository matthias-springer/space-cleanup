moving
animateMovementFrom: currentTile to: nextTile callback: aBlock
	nextTile comeToFront.
	(self positionAnimation)
		unregister;  
		startValue: currentTile position;
		endValue: nextTile position;
		finishBlock: aBlock.
	self positionAnimation 
		start: #deleteWhenFinished; "Automatic registry clean-up. No need to unregister."
		register.