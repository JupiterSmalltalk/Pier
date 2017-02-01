accessing
tags
	"Answer a dictionary mapping tags to structures."
	
	tags isNil
		ifFalse: [ ^ tags ].
	tags := Dictionary new.
	self enumerator do: [ :struct |
		(self dataDescriptions) do: [ :description |
			(self tokenize: struct using: description) do: [ :tag |
				(tags at: tag ifAbsentPut: [ OrderedCollection new ])
					add: struct ] ] ].
	^ tags