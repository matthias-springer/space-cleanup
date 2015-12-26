moving
bfsResultTo: aTile from: aPath
	aPath addLast: aTile.
	"Amount of caching: sqrt(path_length)"
	^ aPath first: aPath size sqrt rounded.