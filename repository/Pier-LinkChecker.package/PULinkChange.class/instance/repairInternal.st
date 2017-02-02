action
repairInternal
	| reference matcher |
	reference := self target reference.
	matcher := [ :structure |
		| newTarget |
		newTarget := structure lookupPath: reference.
		newTarget isNil
			ifFalse: [ self refresh. ^ self target target: newTarget; update ] ].
	self owner parents reversed do: matcher.
	self owner enumerator all do: matcher.
	self owner root enumerator everything do: matcher.
	(reference := self target reference copyAfterLast: $/) isEmpty 
		ifTrue: [ ^ self ].
	self owner enumerator everything do: matcher.
	self owner root enumerator everything do: matcher