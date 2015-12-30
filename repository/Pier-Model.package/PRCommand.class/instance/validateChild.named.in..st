validating
validateChild: aChildStructure named: aString in: aStructure
	self validateName: aString of: aChildStructure in: aStructure.
	self validateNestingOf: aChildStructure in: aStructure