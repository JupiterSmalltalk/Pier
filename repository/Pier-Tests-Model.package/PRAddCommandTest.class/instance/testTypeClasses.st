tests-utilties
testTypeClasses
	| classes addCommmandInstance |

	addCommmandInstance := self actualInstance setContext: self.
	 classes := addCommmandInstance structureClasses.
	self assert: (classes notEmpty).
	self assert: (classes includes: PRPage)