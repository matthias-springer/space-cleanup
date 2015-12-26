submorphs-add/remove
drawDamageControls
	| morph |
	morph := self buildOptionMorph: 'Bucket damage'.
	morph addMorphBack: (self createButtonNamed: '+1' onStateChange: true onAction: [
		[:b | b damage: (b damage + 1)] value: self game mainPlayer bucketPrototype]).
	morph addMorphBack: (self createButtonNamed: '+10' onStateChange: true onAction: [
		[:b | b damage: (b damage + 10)] value: self game mainPlayer bucketPrototype]).
	morph addMorphBack: (self createButtonNamed: '-1' onStateChange: false onAction: [
		[:b | b damage: (b damage - 1)] value: self game mainPlayer bucketPrototype]).
	morph addMorphBack: (self createButtonNamed: '-10' onStateChange: false onAction: [
		[:b | b damage: (b damage - 10)] value: self game mainPlayer bucketPrototype]).
	self addMorphBack: morph.