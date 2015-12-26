accessing
actionOn: aKey
	^ self keyMapping at: aKey ifAbsentPut: [true]