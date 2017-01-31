visiting
visitDescription: aDescription
	| value |
	value := (aDescription accessor read: structure) asCode.
	self addCodeFor: aDescription value: value