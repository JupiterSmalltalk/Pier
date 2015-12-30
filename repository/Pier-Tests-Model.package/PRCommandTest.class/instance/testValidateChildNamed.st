tests-validating
testValidateChildNamed
	PRCurrentContextHolder
		use: self
		during: [ 
			self
				should: [
					self command
						validateChild: PRPage new
						named: 'folder'
						in: self context root ]
				raise: PRConflictingNameError.
			self
				shouldnt: [
					self command
						validateChild: PRPage new
						named: 'zork'
						in: self context root ]
				raise: PRConflictingNameError.
			self
				shouldnt: [
					self command
						validateChild: (self context root childrenDecoration
							at: 'folder')
						named: 'zork'
						in: self context root ]
				raise: PRConflictingNameError ]