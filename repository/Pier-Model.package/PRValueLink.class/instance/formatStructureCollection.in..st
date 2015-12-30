private
formatStructureCollection: aCollection in: aContext
	"Format a collection of structures."

	| result |
	^ self formatCollection: (Array streamContents: [ :stream |
		aCollection do: [ :each |
			(result := self formatStructure: each in: aContext) isNil
				ifFalse: [ stream nextPut: result ] ] ])