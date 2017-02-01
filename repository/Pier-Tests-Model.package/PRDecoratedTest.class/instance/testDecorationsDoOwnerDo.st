tests-enumerating
testDecorationsDoOwnerDo
  | testInstance first second |
  testInstance := self instance
    addDecoration: (first := self decorationWithPriority: SmallInteger minVal);
    addDecoration: (second := self decorationWithPriority: SmallInteger maxVal);
    yourself.
  self instance
    decorationsDo: [ :each | 
      (first notNil
        and: [ testInstance notNil and: [ second notNil and: [ each = first ] ] ])
        ifTrue: [ first := nil ].
      (first isNil
        and: [ testInstance isNil and: [ second notNil and: [ each = second ] ] ])
        ifTrue: [ second := nil ] ]
    ownerDo: [ :each | 
      self assert: first isNil.
      self assert: second notNil.
      self assert: testInstance notNil.
      testInstance := nil ].
  self assert: first isNil.
  self assert: second isNil.
  self assert: testInstance isNil