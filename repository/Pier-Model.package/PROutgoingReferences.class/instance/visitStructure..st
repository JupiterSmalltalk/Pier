visiting-structure
visitStructure: aStructure
	structures add: aStructure.
	aStructure magritteDescription do: [ :each |
		each isDocumentDescription
			ifTrue: [ self visit: (aStructure readUsing: each) ] ]