accessing
type
	^ type ifNil: [ type := self structure defaultChildClass ]