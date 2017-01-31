*pier-exporter-code
codeOn: aStream
	"single byte string #codeOn: is implemented in String>>#codeOn:"
	self isString 
		ifFalse: [ super codeOn: aStream ]
		ifTrue: [
			| asciiCharacterCount |
			"The multibyte string #codeOn: implementation is defined here (in SequenceableCollection) as 
			SequenceableCollection is a common multibyte string base for Gemstone and Pharo"
			asciiCharacterCount := self count: [ :each | each  asInteger < 256 ].
			(asciiCharacterCount / self size) > (3 /4) 
				ifTrue: [ self codeMultiByteStringAsMainlyAsciiStringOn: aStream ]
				ifFalse: [ self codeMultiByteStringAsUTF8ByteArrayOn: aStream ] ]