accessing
oppositeDirection
	| directions |
	directions := self game configuration directions.
	^ directions at: (((directions indexOf: self direction) + (directions size / 2) - 1) \\ directions size) + 1