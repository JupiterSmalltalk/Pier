*pier-model-structure
withEscaper: aBlock
	| old |
	old := self propertyAt: 'escaper' ifAbsent: [ nil ].
	self propertyAt: 'escaper' put: [ :value | ^ value ].
	^ aBlock
		ensure: [ self propertyAt: 'escaper' put: old ]