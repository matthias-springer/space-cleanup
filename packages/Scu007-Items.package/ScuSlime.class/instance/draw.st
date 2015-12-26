render
draw
	super draw.
	self game configuration animationEnabled ifTrue: [    
		self doFadeInAnimation].