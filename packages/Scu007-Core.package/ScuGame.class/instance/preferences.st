accessing
preferences
	preferences ifNil: [self preferences: ScuPreferences default].
	^ preferences