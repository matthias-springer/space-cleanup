permits
canIEnterWithPermissions: permissions default: default
	"example: canIEnterWithPermissions: {#floor. #bucket} default: false
	if permissions do not include the symbol, we use the default
	for items if permissions use not default "
	^ self items allSatisfy: [ :anItem |
		(permissions includes: anItem itemSymbol) xor: default]
