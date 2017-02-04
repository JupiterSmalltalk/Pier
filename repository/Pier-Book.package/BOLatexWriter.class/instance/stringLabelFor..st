queries
stringLabelFor: aString
	^ aString greaseString select: [ :each | each isAlphaNumeric ]