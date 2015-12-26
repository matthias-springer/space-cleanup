accessing
resources
	resources ifNil: [ 
		self resources: ScuResourceManager new.
		self resources imageSize: self configuration tileSize].
	^ resources