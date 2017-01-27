accessing
structure
	^ structure ifNil: [ structure := self context structure ]