tests-utilties
testUniqueTitle
	20 timesRepeat: [
		self
			shouldnt: [
				self structure addChild: (PRPage named: (self command
					uniqueName: 'foo' in: self structure)) ]
			raise: PRConflictingNameError ].
	#( 'foo' 'foo-2' 'foo-9' 'foo-10' 'foo-11' 'foo-20' ) do: [ :each |
		self assert: (self structure childrenDecoration includes: each) ]