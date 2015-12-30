tests-visiting
testOutgoingReferences
	| matches |
	self structure contents: ''.
	matches := self structure outgoingReferences
		collect: [ :each | each target ].
	self assert: matches size = 0.

	self structure contents: '*/*'.
	matches := self structure outgoingReferences
		collect: [ :each | each target ].
	self assert: matches size = 1.
	self assert: matches first = self root.

	self structure contents: '*.*'.
	matches := self structure outgoingReferences
		collect: [ :each | each target ].
	self assert: matches size = 1.
	self assert: matches first = self structure.

	self structure contents: '*.* */* */*'.
	matches := self structure outgoingReferences
		collect: [ :each | each target ].
	self assert: matches size = 3.
	self assert: matches first = self structure.
	self assert: matches second = self root.
	self assert: matches third = self root