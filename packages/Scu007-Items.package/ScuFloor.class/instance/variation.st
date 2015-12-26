render
variation
	| neighbor toAppend|
	variation ifNil: [ 
		toAppend := ''.
		self game configuration directions do: [:aDirection |  
			neighbor := self tileUnder neighborAt: aDirection.
			(neighbor isNil not and: [neighbor searchFor: #floor]) 
				ifTrue: [toAppend := toAppend, '1'] 
				ifFalse: [toAppend := toAppend, '0'].  
			self variation: toAppend]].
	^ variation