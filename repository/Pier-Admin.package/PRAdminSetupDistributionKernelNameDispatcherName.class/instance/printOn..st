printing
printOn: aStream
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	aStream
		nextPutAll: ' kernelName: ';
		print: kernelName.
	aStream
		nextPutAll: ' dispatcherName: ';
		print: dispatcherName.
	aStream
		nextPutAll: ' distribution: ';
		print: distribution