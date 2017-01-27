accessing
unfilteredItems
	^ ((self context root incomingReferences
		to: self context structure;
		collect: [ :each | each owner ])
		select: [ :each | each notNil ])
			asSet