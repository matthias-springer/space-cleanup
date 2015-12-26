render
doFadeInAnimationWithDuration: aNumber
	self show.
	(AnimAlphaBlendAnimation fadeInOn: self duration: aNumber)
		register;
		start: #deleteWhenFinished.