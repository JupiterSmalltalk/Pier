accessing
source: aString
	self split: aString do: [ :tokens :spaces |
		super source: tokens.
		sourceSpaces := spaces ]