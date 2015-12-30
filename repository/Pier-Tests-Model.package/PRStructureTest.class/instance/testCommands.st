tests-accessing
testCommands
	self assert: (self structure viewCommandClass includesBehavior: PRCommand).
	self assert: (self structure editCommandClass includesBehavior: PRCommand)