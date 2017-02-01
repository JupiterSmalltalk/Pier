tests
testStringAsCode
	self assert: 'aString' asCode equals: '''aString'''.
	self assert: 'áString' asCode equals: '''áString'''.
	self assert: 'åString' asCode equals: '''åString'''.
	self assert: 'some ''quotes'' ' asCode equals: '''some ''''quotes'''' '''.