submorphs-add/remove
drawDistanceControls
	| morph |
	morph := self buildOptionMorph: 'Bucket distance'.
	morph addMorphBack: (self createButtonNamed: '+1' onStateChange: true onAction: [
		[:b | b distance: (b distance + 1)] value: self game mainPlayer bucketPrototype]).
	morph addMorphBack: (self createButtonNamed: '+10' onStateChange: true onAction: [
		[:b | b distance: (b distance + 10)] value: self game mainPlayer bucketPrototype]).
	morph addMorphBack: (self createButtonNamed: '-1' onStateChange: false onAction: [
		[:b | b distance: (b distance - 1)] value: self game mainPlayer bucketPrototype]).
	morph addMorphBack: (self createButtonNamed: '-10' onStateChange: false onAction: [
		[:b | b distance: (b distance - 10)] value: self game mainPlayer bucketPrototype]).
	self addMorphBack: morph.