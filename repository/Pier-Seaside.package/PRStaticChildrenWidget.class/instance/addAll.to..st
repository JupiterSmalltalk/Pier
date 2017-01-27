accessing
addAll: aStructure to: aCollection
	| children |
	children := self childrenOf: aStructure.
	children ifNotEmpty: [ 
		aCollection add: aStructure.
		children do: [:each | self addAll: each to: aCollection  ] ]