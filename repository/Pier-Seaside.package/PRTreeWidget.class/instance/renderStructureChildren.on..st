rendering-items
renderStructureChildren: aStructure on: html
	| children |
	(self isExpanded: aStructure)
		ifFalse: [ ^ self ].
	children := self childrenOf: aStructure.
	children isEmpty ifTrue: [ ^ self ].
	html unorderedList: [
		children do: [ :each |
			self renderStructure: each on: html ] ]