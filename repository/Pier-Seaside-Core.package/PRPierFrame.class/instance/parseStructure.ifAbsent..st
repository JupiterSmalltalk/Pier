processing
parseStructure: aRequest ifAbsent: aBlock
	| path consumer pathString |
	path := OrderedCollection new.
	consumer := self requestContext consumer.
	[ consumer atEnd ]
		whileFalse: [ path add: consumer next ].
	pathString := path
		inject: String new
		into: [ :result :each | result , '/' , each ].
	^ self context root
		lookupPath: pathString
		ifAbsent: aBlock