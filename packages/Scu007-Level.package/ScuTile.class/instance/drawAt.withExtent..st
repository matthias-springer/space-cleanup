render
drawAt: position withExtent: extent
	self 
		position: position;
		extent: extent.
	self color: Color transparent;
		borderColor: Color black;
		borderWidth: 1.