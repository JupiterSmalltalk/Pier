tests-validating
testValidateNesting
	self
		shouldnt: [
			self command
				validateNestingOf: self context root
				in: PRPage new ]
		raise: PRInvalidNestingError.
	self
		shouldnt: [
			self command
				validateNestingOf: PRPage new
				in: self context root ]
		raise: PRInvalidNestingError