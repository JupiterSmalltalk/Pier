tests-accessing
testLabel
	self assert: self actualClass label isString.
	self assert: self actualClass label isEmpty not.
	
	self assert: self instance label isString.
	self assert: self instance label isEmpty not