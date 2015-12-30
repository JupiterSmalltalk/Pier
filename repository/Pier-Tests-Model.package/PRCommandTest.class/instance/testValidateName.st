tests-validating
testValidateName
	PRCurrentContextHolder
		use: self
		during: [ 
			self
				shouldnt: [
					self command
						validateName: 'zork'
						of: PRPage new
						in: self context root ]
				raise: PRConflictingNameError.
			self
				should: [
					self command
						validateName: 'folder'
						of: PRPage new
						in: self context root ]
				raise: PRConflictingNameError.
			self
				shouldnt: [
					self command
						validateName: 'zork'
						of: (self context root childrenDecoration at: 'folder')
						in: self context root ]
				raise: PRConflictingNameError.
			self
				shouldnt: [
					self command
						validateName: 'folder'
						of: (self context root childrenDecoration at: 'folder')
						in: self context root ]
				raise: PRConflictingNameError ]