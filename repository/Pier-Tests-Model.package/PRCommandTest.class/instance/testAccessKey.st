tests-accessing
testAccessKey
	self assert: (self actualClass accessKey isNil or: [ self actualClass accessKey isCharacter ])