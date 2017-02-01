accessing
documentOf: aStructure
	"Answer the document to be displayed."

	^ (self specification accessor read: aStructure) ifNil: [
		(self inherited and: [ aStructure parent notNil ])
			ifTrue: [ self documentOf: aStructure parent ]
			ifFalse: [ self default ] ]