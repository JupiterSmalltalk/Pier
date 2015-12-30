private
formatCollection: aCollection
	"Format a collection of document objects or strings."
	
	| collection separator |
	collection := Array streamContents: [ :stream |
		aCollection do: [ :each |
			each isNil ifFalse: [ 
				each isString
					ifTrue: [ stream nextPut: (PRText content: each) ]
					ifFalse: [ stream nextPut: each ] ] ] ].
	collection isEmpty ifTrue: [ ^ nil ].
	^ (separator := self parameters at: 'separator' ifAbsent: [ nil ]) isNil
		ifTrue: [
			collection
				inject: PRUnorderedList new
				into: [ :result :each | result add: (PRListItem with: each); yourself ] ]
		ifFalse: [
			Array streamContents: [ :stream |
				collection
					do: [ :each | stream nextPut: each ]
					separatedBy: [ stream nextPut: (PRText content: separator) ] ] ]