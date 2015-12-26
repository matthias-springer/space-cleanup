event handling
handleDeceasedPlayerItem: aPlayer by: anotherItem
	self state isFinished ifFalse: [self state: (ScuGameOverState newIn: self)].