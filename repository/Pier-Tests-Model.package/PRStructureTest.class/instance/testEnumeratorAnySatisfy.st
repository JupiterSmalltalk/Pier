tests-enumerator
testEnumeratorAnySatisfy
	self assert: (self root enumerator everything
		anySatisfy: [ :each | each = self structure ])