*pier-model
target
	"Answer the referenced structure. Do a lookup, if we haven't cached a real object reference."

	(target isNil and: [ self owner notNil and: [ self reference notNil ] ])
		ifTrue: [ target := self owner lookupPath: self reference ifAbsent: [ nil ] ].
	^ target