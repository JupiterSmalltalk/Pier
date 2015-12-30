tests-utilities
testUniqueName
	20 timesRepeat: [
		self
			shouldnt: [
				self structure addChild: (PRPage named: (self command
					uniqueName: 'foo' in: self structure)) ]
			raise: PRConflictingNameError ]