submorphs-add/remove
buildSubMorphs
	self 
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		wrapCentering: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 20; 
		cellInset: 10.
	self 
		drawHeadline;
		drawHealthControls;
		drawPortalControls;
		drawCountControls;
		drawDamageControls;
		drawDistanceControls;
		drawMonsterControls;
		drawControls.