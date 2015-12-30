tests-visiting
testIncomingReferences
	| matches |
	matches := self root incomingReferences
		to: self structure;
		collect: [ :each | each owner ].
	self assert: matches size = 0.

	self root contents: '*/folder/structure*'.
	matches := self root incomingReferences
		to: self structure;
		collect: [ :each | each owner ].
	self assert: matches size = 1.
	self assert: matches first = self root.

	self folder contents: '+/folder/structure+'.
	matches := self root incomingReferences
		to: self structure;
		collect: [ :each | each owner ].
	self assert: matches size = 2.
	self assert: matches first = self root.
	self assert: matches second = self folder