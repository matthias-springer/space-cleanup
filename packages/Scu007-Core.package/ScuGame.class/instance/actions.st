event handling
actions
	| startGame |
	startGame := [self state: (ScuGameRunningState newIn: self)].
	actions ifNil: [self actions: (Dictionary newFromPairs: {
		#firstPlayerRight. [self mainPlayer moveTo: #east. startGame value].
		#firstPlayerLeft. [self mainPlayer moveTo: #west. startGame value].
		#firstPlayerUp. [self mainPlayer moveTo: #north. startGame value].
		#firstPlayerDown. [self mainPlayer moveTo: #south. startGame value].
		#firstPlayerPlaceBucket. [self mainPlayer placeBucket].
		#firstPlayerPlacePortal. [self mainPlayer placePortal].
		#pause. [ self state togglePaused].
		#toggleLock. [ self sticky: self isSticky not].
		#exit. [self delete] })].
	^ actions