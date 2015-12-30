tests
testFile
	| model |
	model := MAMemoryFileModel new.
	self structure file: model.
	self assert: self structure file = model