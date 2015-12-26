builder
buildMonsters
	self game monsters: OrderedCollection new.
	self game configuration numberOfMonsters timesRepeat: [
		self game monsters add: self buildMonster].