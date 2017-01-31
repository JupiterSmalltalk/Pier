private
summaryOf: aPost
	| input output emptyPosition |
	input := aPost plainText readStream.
	output := WriteStream on: String new.
	"Gemstone and Pharo use 1 based and 0 based stream positioning respectively
	work out what base of stream we have"
	emptyPosition := output position.

	[ input atEnd ] whileFalse: [
		output nextPutAll: (input upTo: $<).
		input upTo: $> ].
	
	self numberOfCharacters isNil ifFalse: [
		output position: (output size min: self numberOfCharacters) + emptyPosition.
		output atEnd
			ifFalse: [ output nextPutAll: '...' ] ].
	^ output contents