visiting-structure
visitStructure: aStructure
	aStructure magritteDescription do: [ :each |
		each isDocumentDescription
			ifTrue: [ self visit: (aStructure readUsing: each) ] ]