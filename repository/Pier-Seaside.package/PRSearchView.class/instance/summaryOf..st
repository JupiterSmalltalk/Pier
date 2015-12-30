private
summaryOf: aStructure
	| input output |
	aStructure magritteDescription do: [ :description |
		description isDocumentDescription ifTrue: [
			output := WriteStream on: String new.
			input := (PRTextWriter write: (aStructure readUsing: description)) readStream.
			[ input atEnd ] whileFalse: [
				output nextPutAll: (input upTo: $<).
				input upTo: $> ].
			self summarySize isNil ifFalse: [
				output position: (output size min: self summarySize).
				output atEnd
					ifFalse: [ output nextPutAll: '...' ] ].
			^ output contents ] ].
	^ nil