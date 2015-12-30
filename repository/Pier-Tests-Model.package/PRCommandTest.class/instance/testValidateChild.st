tests-validating
testValidateChild
	PRCurrentContextHolder
		use: self
		during: [ 
			self
				should: [
					self command
						validateChild: (PRPage named: 'folder')
						in: self context root ]
				raise: PRConflictingNameError.
			self
				shouldnt: [
					self command
						validateChild: (PRPage named: 'zork')
						in: self context root ]
				raise: PRConflictingNameError.
			self
				shouldnt: [
					self command
						validateChild: (self context root childrenDecoration at: 'folder')
						in: self context root ]
				raise: PRConflictingNameError ]