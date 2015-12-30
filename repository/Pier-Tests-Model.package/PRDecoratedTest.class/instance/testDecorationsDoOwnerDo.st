tests-enumerating
testDecorationsDoOwnerDo
	| instance first second |
	instance := self instance
		addDecoration: (first := self decorationWithPriority: SmallInteger minVal);
		addDecoration: (second := self decorationWithPriority: SmallInteger maxVal);
		yourself.
	self instance
		decorationsDo: [ :each |
			(first notNil and: [ instance notNil and: [ second notNil and: [ each = first ] ] ])
				ifTrue: [ first := nil ].
			(first isNil and: [ instance isNil and: [ second notNil and: [ each = second ] ] ])
				ifTrue: [ second := nil ] ]
		ownerDo: [ :each |
			self assert: first isNil.
			self assert: second notNil.
			self assert: instance notNil.
			instance := nil ].
	self assert: first isNil.
	self assert: second isNil.
	self assert: instance isNil