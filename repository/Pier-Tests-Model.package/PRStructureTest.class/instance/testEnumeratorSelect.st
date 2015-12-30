tests-enumerator
testEnumeratorSelect
	self
		enumerator: (self root enumerator everything
			select: [ :each | each = self structure ])
		gives: #( 'structure' )