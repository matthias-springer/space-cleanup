actions
activate
	| strings |
	strings := self game configuration strings.
	(UserDialogBoxMorph new 
		title: (strings at: #wonTitle); 
		label: ((strings at: #wonText) format: {self game stats score});
		addButton: (strings at: #levelAgainBtnText) value: [self game state: (ScuGameBuildState newIn: self game)];
		addSelectedButton: (strings at: #anotherGameBtnText) value: [self game state: (ScuGameConfigState newIn: self game)];
		addCancelButton: (strings at: #closeBtnText) value: [self game delete];
		runModalIn: ActiveWorld forHand: ActiveHand at: nil) value.