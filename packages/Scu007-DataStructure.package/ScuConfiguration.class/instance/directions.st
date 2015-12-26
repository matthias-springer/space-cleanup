game
directions
	self diagonalDirections 
		ifTrue: [^ {#north. #east. #south. #west. #northWest. #northEast. #southWest. #southEast}]
		ifFalse: [^ {#north. #east. #south. #west}].