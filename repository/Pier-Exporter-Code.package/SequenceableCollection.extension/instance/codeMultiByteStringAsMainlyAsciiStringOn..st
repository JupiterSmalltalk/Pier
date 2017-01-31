*pier-exporter-code
codeMultiByteStringAsMainlyAsciiStringOn: aStream
	| readStream initialPosition |
	
	readStream := ReadStream on: self.
	initialPosition := readStream position. "initialPosition varies between Gemstone and Pharo"
	aStream nextPut: $(.
	[ readStream atEnd not ] whileTrue: [
	
		(readStream position ~= initialPosition) ifTrue: [
			aStream nextPutAll: ', ' ].
		
		aStream nextPutAll: '('''.
		[ (readStream atEnd not) and: [ readStream peek asInteger  < 256 ] ] whileTrue: [
			| nextChar |
			nextChar := readStream next.
			nextChar = $' ifTrue: [ aStream nextPut: $' ].	
			aStream nextPut: nextChar ].
			aStream nextPut: $'.
			
			(readStream atEnd not) ifTrue: [
				aStream nextPutAll: ' copyWith: (Character value: '; print: readStream next greaseInteger; nextPut: $) ].
	
		aStream nextPut: $) ].
	aStream nextPut: $).