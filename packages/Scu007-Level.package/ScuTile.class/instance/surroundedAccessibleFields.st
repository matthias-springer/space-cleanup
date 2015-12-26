accessing
surroundedAccessibleFields
	| allNeighbors |
	allNeighbors := Set newFrom: self neighbors values.
	"workaround: Set>>flatten was removed in Squeak 4.3"
	({#north. #south} collect: [:direction | 
		{#west. #east} collect: [:direction2 | 
			(self neighborAt: direction) neighborAt: direction2]]) 
		do: [:tiles | allNeighbors addAll: tiles].
	^ allNeighbors select: [:x | x notNil]
