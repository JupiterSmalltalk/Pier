rendering
renderItem: aStructure on: html
	| children |
	super renderItem: aStructure on: html.
	self expandActive ifFalse: [ ^self ].
	(self isActive: aStructure) ifFalse: [ ^ self ].
	children := self childrenOf: aStructure.
	children isEmpty
		ifFalse: [ self renderItems: children on: html ]