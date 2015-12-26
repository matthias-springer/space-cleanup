builder
drawItems
	self tiles withIndicesDo: [:tile :y :x |
		tile items do: [:item |
			item draw ]].
