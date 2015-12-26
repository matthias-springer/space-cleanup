instance creation
newFrom: aConfiguration
	^ super basicNew
		configuration: aConfiguration;
		initialize;
		yourself