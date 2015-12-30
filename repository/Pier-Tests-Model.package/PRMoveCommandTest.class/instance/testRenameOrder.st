tests
testRenameOrder
	self kernel root
		addChild: (PRPage named: 'other').
	self assert: (self kernel root enumerator
		collect: [ :each | each name ])
			= #('folder' 'command' 'other').

	self command name: 'renamed'.
	self
		shouldnt: [ self command execute ]
		raise: PRConflictingNameError.
	self assert: (self kernel root enumerator
		collect: [ :each | each name ])
			= #('folder' 'renamed' 'other')