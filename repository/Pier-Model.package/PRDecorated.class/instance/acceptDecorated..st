visiting
acceptDecorated: aVisitor
	self
		decorationsDo: [ :each | aVisitor visit: each ]
		ownerDo: [ :each | super acceptDecorated: aVisitor ]