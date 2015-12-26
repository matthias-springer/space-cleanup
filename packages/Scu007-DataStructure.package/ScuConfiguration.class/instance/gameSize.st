grid
gameSize
	"number of tiles in column@row"
	gameSize ifNil: [self gameSize: 20@12].
	^ gameSize