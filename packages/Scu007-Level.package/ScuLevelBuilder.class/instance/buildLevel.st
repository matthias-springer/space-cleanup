builder
buildLevel
	self level: (ScuLevel newIn: self game).
	self level builder: self.
	self level color: Color transparent.
