submorphs-add/remove
drawHealthControls
	| morph |
	morph := self buildOptionMorph: 'Player health'.
	morph addMorphBack: (self createButtonNamed: '+1' onStateChange: [true] onAction: [
		self game mainPlayer takeDamage: -1 from: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '+10' onStateChange: [true] onAction: [
		self game mainPlayer takeDamage: -10 from: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '-1' onStateChange: [false] onAction: [
		self game mainPlayer takeDamage: 1 from: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '-10' onStateChange: [false] onAction: [
		self game mainPlayer takeDamage: 10 from: self game mainPlayer]).
	self addMorphBack: morph.