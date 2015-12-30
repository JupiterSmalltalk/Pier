visiting-document
visitValueLink: aLink
	"Value links are always embedded, there is no point in not embedding them. Values can be either a document (the document is visited) or any other Smalltalk object (the value is renderered). If the value is nil, the alias of the link is displayed."

	| value |
	value := aLink valueIn: self context.
	value isNil
		ifTrue: [ ^ self visitLink: aLink ].
	(value isCollection and: [ value isString not ])
		ifTrue: [ ^ parent visitAll: value ].
	(value isKindOf: PRDocumentItem)
		ifTrue: [ ^ parent visit: value ].
	html render: value