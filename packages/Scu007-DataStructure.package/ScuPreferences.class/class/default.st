instance creation
default
	| instance |
	instance := ScuPreferences new.
	instance keyMapping: (Dictionary newFromPairs: {
			Character arrowRight. #firstPlayerRight.
			Character arrowLeft. #firstPlayerLeft.
			Character arrowUp. #firstPlayerUp.
			Character arrowDown. #firstPlayerDown.
			Character space. #firstPlayerPlaceBucket.
			Character escape. #pause.
			$q. #exit.
			$l. #toggleLock.
			$p. #firstPlayerPlacePortal}).
	^ instance