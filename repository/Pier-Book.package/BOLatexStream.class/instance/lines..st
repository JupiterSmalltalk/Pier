convenience
lines: aString
	"Output aString and take care of line ending within aString."
	| str |
	str := aString readStream.
	[str atEnd] whileFalse: [ 
		self line: str nextLine.
	 ]