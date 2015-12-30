accessing
target: aString
	super target: (aString ifNil: [ String new ]) lines