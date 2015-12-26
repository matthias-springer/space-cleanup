accessing
images
	"translates itemSymbol to accessor for image"
	images ifNil: [ self images: (IdentityDictionary newFromPairs: {
			#floor0000. [self class svgFloor0000].
			#floor0001. [self class svgFloor0001].
			#floor0010. [self class svgFloor0010].
			#floor0011. [self class svgFloor0011].
			#floor0100. [self class svgFloor0100].
			#floor0101. [self class svgFloor0101].
			#floor0110. [self class svgFloor0110].
			#floor0111. [self class svgFloor0111].
			#floor1000. [self class svgFloor1000].
			#floor1001. [self class svgFloor1001].
			#floor1010. [self class svgFloor1010].
			#floor1011. [self class svgFloor1011].
			#floor1100. [self class svgFloor1100].
			#floor1101. [self class svgFloor1101].
			#floor1110. [self class svgFloor1110].
			#floor1111. [self class svgFloor1111].
			#player. [self class svgPlayer ].
			#playerwest. [self class svgPlayerLeft ].
			#playereast. [self class svgPlayerRight].
			#playernorth. [self class svgPlayerUp ].
			#playersouth. [self class svgPlayerDown ].
			#monster. [self class svgMonster].
			#wall. [self class svgWall].
			#bucket. [self class svgBucket].
			#slime. [self class svgSlime].
			#water. [self class svgWater].
			#pickUpItem. [self class svgPickup].
			#pickUpItemextend. [self class svgPickupExtend].
			#pickUpItembucket. [self class svgPickupBucket].
			#pickUpItemsoap. [self class svgPickupSoap].
			#pickUpItemcake. [self class svgPickupCake].
			#pickUpItemfast. [self class svgPickupFast].
			#pickUpItemportal. [self class svgPickupPortal].
			#pickUpItemheart. [self class svgPickupHeart].
			#portalnorth. [self class svgPortalNorth].
			#portaleast. [self class svgPortalEast].
			#portalsouth. [self class svgPortalSouth].
			#portalwest. [self class svgPortalWest].
			#pickUpItemhealth. [self class svgHeart].
			#score. [self class svgScore].
			#default. [self class svgDefault]})].
	^ images