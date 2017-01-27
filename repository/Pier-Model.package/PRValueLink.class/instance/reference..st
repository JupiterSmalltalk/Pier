accessing
reference: aString
	super reference: aString.
	selector := self selectorFor: self title asLowercase trimBoth