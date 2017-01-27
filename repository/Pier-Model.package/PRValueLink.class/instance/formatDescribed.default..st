private
formatDescribed: anObject default: anAccessor
	"Formats a described object anObject according to the display parameter, use anAccessor as a default. The display string can either be a parameter name (legacy) or a string containing zero or more parameter names in curly brackets for arbitrary string composition."
	
	| display input output |
	anObject isNil 
		ifTrue: [ ^ nil ].
	(display := self parameters at: 'display' ifAbsent: [ nil ]) isNil
		ifTrue: [ ^ anAccessor asAccessor read: anObject ].
	anObject magritteDescription do: [ :description | 
		description parameterName = display
			ifTrue: [ ^ description toString: (anObject readUsing: description) ] ].
	input := display readStream.
	output := WriteStream on: (String new: 2 * display size).
	[ input atEnd ] whileFalse: [
		output nextPutAll: (input upTo: ${).
		input atEnd ifFalse: [
			| parameter description |
			parameter := input upTo: $}.
			description := anObject magritteDescription
				detect: [ :each | each parameterName = parameter ]
				ifNone: [ nil ].
			description isNil
				ifFalse: [ output nextPutAll: (description toString: (anObject readUsing: description)) ] ] ].
	^ output contents