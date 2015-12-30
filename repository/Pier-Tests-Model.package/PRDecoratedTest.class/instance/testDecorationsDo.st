tests-enumerating
testDecorationsDo
	| first second |
	self instance
		addDecoration: (first := self decorationWithPriority: SmallInteger minVal);
		addDecoration: (second := self decorationWithPriority: SmallInteger maxVal).
	self instance decorationsDo: [ :each |
		(first notNil and: [ second notNil and: [ each = first ] ])
			ifTrue: [ first := nil ].
		(first isNil and: [ second notNil and: [ each = second ] ])
			ifTrue: [ second := nil ] ].
	self assert: first isNil.
	self assert: second isNil