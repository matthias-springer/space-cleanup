submorphs-add/remove
drawMonsterControls
	| morph |
	morph := self buildOptionMorph: 'Mo-mo-mo-mo-monster'.
	morph addMorphBack: (self createButtonNamed: '+1' onStateChange: true onAction: [
		[:b | b positionMonsters: {b buildMonster} asOrderedCollection] value: self game level builder]).
	morph addMorphBack: (self createButtonNamed: '+10' onStateChange: true onAction: [
		10 timesRepeat: [[:b | b positionMonsters: {b buildMonster} asOrderedCollection] value: self game level builder]]).
	self addMorphBack: morph.