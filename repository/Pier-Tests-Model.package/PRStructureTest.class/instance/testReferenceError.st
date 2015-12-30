tests-reference
testReferenceError
	self should: [ self structure relativePathFrom: PRPage new ] raise: PRInvalidKernelError.
	self should: [ PRPage new relativePathFrom: self structure ] raise: PRInvalidKernelError.
	self should: [ self structure relativePathTo: PRPage new ] raise: PRInvalidKernelError.
	self should: [ PRPage new relativePathTo: self structure ] raise: PRInvalidKernelError