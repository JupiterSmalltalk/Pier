tests-accessing
testRoot
	| structure |
	self kernel root: (structure := PRPage new).
	self assert: self kernel root = structure