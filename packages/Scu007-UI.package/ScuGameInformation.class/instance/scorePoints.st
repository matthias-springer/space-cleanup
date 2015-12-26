accessing
scorePoints
	scorePoints ifNil: [ self scorePoints: 0 ].
	^ scorePoints