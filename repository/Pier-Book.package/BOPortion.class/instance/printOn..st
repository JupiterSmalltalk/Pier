printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' type: '; print: self type