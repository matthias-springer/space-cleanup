initialize-release
initialize
	super initialize.
	self sticky: true.
	self color: Color transparent.
	self configuration draw ifTrue: [ self state: (ScuGameConfigState newIn: self)].