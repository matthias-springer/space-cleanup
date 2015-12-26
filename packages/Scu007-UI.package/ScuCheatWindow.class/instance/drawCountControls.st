submorphs-add/remove
drawCountControls
	| morph |
	morph := self buildOptionMorph: 'Bucket count'.
	morph addMorphBack: (self createButtonNamed: '+1' onStateChange: true onAction: [
		[:p | p bucketsLeft: (p bucketsLeft + 1)] value: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '+10' onStateChange: true onAction: [
		[:p | p bucketsLeft: (p bucketsLeft + 10)] value: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '-1' onStateChange: false onAction: [
		[:p | p bucketsLeft: (p bucketsLeft - 1)] value: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '-10' onStateChange: false onAction: [
		[:p | p bucketsLeft: (p bucketsLeft - 10)] value: self game mainPlayer]).
	self addMorphBack: morph.