permits
enterPermissions
	enterPermissions ifNil: [self enterPermissions: {#floor . #pickUpItem. #portal}].
	^ enterPermissions