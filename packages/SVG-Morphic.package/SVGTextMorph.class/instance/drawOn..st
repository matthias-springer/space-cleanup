as yet unclassified
drawOn: aCanvas
	"Draw the component on the canvas."
	
	(self composedStyle at: 'visibility')
		ifFalse: [^self].
	super drawOn: aCanvas.
	self renderer
		renderText: self
		on: aCanvas