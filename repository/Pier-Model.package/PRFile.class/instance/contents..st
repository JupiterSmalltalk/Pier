accessing-convenience
contents: aString
	"Set the contents of the receiving file. Directly access the underlying file-model, if you do not want automatic conversion."

	self file contents: (aString ifNil: [ String new ]) asByteArray