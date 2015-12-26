instance creation
openWithCheats
	|game|
	game := self open.
	game configuration cheatsEnabled: true.
	^ game