accessing
unfilteredItems
	self node ifNil: [ ^#() ].
	^self childrenOf: self node