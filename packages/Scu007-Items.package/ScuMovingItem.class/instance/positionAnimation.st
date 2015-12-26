accessing
positionAnimation
	positionAnimation ifNil: [  
		self positionAnimation:
			(AnimPropertyAnimation new
				duration: self animationTime;
				property: #position;
				start: #deleteWhenFinished; "Automatic registry clean-up. No need to unregister."
   				target: self)].
	^ positionAnimation