render
drawImage
	| form |
	form := self game resources formFor: self itemSymbol inVariation: self variation.
	(form ~= self form) ifTrue: [self newForm: form].