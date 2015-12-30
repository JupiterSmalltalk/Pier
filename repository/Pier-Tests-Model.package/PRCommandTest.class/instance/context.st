accessing
context
	^ context ifNil: [ context := self contextInstance ]