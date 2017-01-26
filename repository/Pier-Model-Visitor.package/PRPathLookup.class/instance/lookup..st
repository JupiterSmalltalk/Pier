actions
lookup: aStructure
	^ self withEscaper: [
		self stream peek = self class pathDelimiter
			ifTrue: [ self lookupRoot: aStructure ]
			ifFalse: [ self lookupStart: aStructure ].
		self childNotFound: aStructure ]