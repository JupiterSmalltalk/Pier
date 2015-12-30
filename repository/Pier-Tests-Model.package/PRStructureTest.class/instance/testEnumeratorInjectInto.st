tests-enumerator
testEnumeratorInjectInto
	self assert: (self root enumerator everything
		inject: String new
		into: [ :result :each | result , each name ])
			= 'rootfolderchildstructure'