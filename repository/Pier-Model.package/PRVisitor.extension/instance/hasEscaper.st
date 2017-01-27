*pier-model-structure
hasEscaper
	^ (self propertyAt: 'escaper' ifAbsent: [ nil ]) notNil