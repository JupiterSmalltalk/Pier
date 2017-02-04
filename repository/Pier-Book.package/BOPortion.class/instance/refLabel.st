accessing
refLabel
	^ super refLabel , ' ' , (self number ifNil: [ '' ])