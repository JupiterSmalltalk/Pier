accessing-editing
text: aString
	| document |
	document := self specification fromString: aString.
	document isNil
		ifFalse: [ document owner: self context structure ].
	self context command fields
		at: self specification
		put: document