visiting
visit: aDescription
	"only visit writable descriptions - otherwise we can't initialise it."
	(aDescription stringAccessor canWrite: structure) ifFalse: [ ^ self ]. 
	
	"only visit descriptions with non-default values"
	(self isDefaultDescriptionValue: aDescription) ifTrue: [ ^ self ].
	(self isNil: aDescription) ifTrue: [ ^ self ].
	(self isCommonDefault: aDescription) ifTrue: [ ^ self ].

	aDescription acceptMagritte: self