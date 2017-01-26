printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' structure: '; print: self structure title.
	aStream nextPutAll: ' command: '; print: self command class label