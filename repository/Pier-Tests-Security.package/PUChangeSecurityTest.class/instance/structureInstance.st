private
structureInstance
	^ super structureInstance
		addChild: self child;
		yourself