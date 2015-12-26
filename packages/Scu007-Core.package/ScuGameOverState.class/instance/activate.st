actions
activate
	| strings |
	strings := self game configuration strings.
	(UserDialogBoxMorph new 
		title: (strings at: #lostTitle); 
		label: (strings at: #lostText); 
		addSelectedButton: (strings at: #levelAgainBtnText) value: [self game state: (ScuGameBuildState newIn: self game)];
		addButton: (strings at: #anotherGameBtnText) value: [self game state: (ScuGameConfigState newIn: self game)];
		addCancelButton: (strings at: #closeBtnText) value: [self game delete];
		runModalIn: ActiveWorld forHand: ActiveHand at: nil) value.