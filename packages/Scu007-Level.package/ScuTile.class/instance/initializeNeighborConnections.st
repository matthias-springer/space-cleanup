initialize-release
initializeNeighborConnections
	"initializes the array for the connection to other tiles that one can acces from this one"
	self game configuration directions do: [:direction | self neighbors at: direction put: nil].