accessing
structure
	^ structure ifNil: [ structure := self structureInstance ]