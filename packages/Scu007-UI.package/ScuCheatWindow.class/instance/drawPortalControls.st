submorphs-add/remove
drawPortalControls
	| morph |
	morph := self buildOptionMorph: 'Portal count'.
	morph addMorphBack: (self createButtonNamed: '+1' onStateChange: true onAction: [
		[:p | p portalsLeft: (p portalsLeft + 1)] value: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '+10' onStateChange: true onAction: [
		[:p | p portalsLeft: (p portalsLeft + 10)] value: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '-1' onStateChange: false onAction: [
		[:p | p portalsLeft: (p portalsLeft - 1)] value: self game mainPlayer]).
	morph addMorphBack: (self createButtonNamed: '-10' onStateChange: false onAction: [
		[:p | p portalsLeft: (p portalsLeft - 10)] value: self game mainPlayer]).
	self addMorphBack: morph.