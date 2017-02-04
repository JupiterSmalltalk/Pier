convenience-raw
rawLines: aString
	"Output aString and take care of line ending within aString."
	| str |
	str := aString readStream.
	[str atEnd] whileFalse: [ 
		self rawLine: str nextLine.
	 ]