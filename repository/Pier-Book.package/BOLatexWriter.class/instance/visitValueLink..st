visiting-document
visitValueLink: aValueLink
	| value |
	value := aValueLink valueIn: PRCurrentContext value.
	value isNil
		ifTrue: [ ^ self visitLink: aValueLink ].
	(value isCollection and: [ value isString not ])
		ifTrue: [ ^ self visitAll: value ].
	(value isKindOf: PRDocumentItem)
		ifTrue: [ ^ self visit: value ].
	latex print: value