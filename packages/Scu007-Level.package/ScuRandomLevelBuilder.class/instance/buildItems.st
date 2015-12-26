builder
buildItems 
	"First fill the map with walls, then create floor randomly, then remove big aggregations of floor tiles (rooms)."
	self createWalls.
	1 to: (self game configuration numberOfRandomPaths) do: [:x | self createFloors].
	self createBorderWalls.
	self createMoreWalls.