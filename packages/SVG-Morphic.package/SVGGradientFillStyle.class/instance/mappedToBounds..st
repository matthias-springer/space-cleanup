accessing
mappedToBounds: aRectangle
	"Answer a copy of the receiver with the appropriate origin and direction."

	|o|
	self mapsToObjectBounds
		ifTrue: [^self copy
				origin: (o := aRectangle origin + ( self origin * aRectangle extent));
				direction: self direction + self origin * aRectangle extent - o;
				normal: nil].
	^self