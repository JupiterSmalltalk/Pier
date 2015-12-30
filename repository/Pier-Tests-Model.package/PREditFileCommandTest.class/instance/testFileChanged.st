tests-file
testFileChanged
	| file |
	self command
		write: (file := MAFileModel new
			contents: 'foobar';
			filename: 'test.txt';
			mimetype: 'text/plain';
			yourself)
		using: PRFile new descriptionFile.
	self
		shouldnt: [ self command execute ]
		raise: PRStructureError.
	self assert: self structure file = file