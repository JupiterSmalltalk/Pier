visiting
visitDocumentDescription: aDescription
	"could have used:
		 value := (aDescription toString: (aDescription accessor read: structure)) asCode
	but I thought it was good to be explicit that we require wiki format output"
	| value |
	value := (self writerClass write: (aDescription accessor read: structure)) asCode.
	self addCodeFor: aDescription value: value