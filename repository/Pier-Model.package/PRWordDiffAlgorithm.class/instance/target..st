accessing
target: aString
	self split: aString do: [ :tokens :spaces |
		super target: tokens.
		targetSpaces := spaces ]