instance creation
start: aStructure path: aString ifAbsent: aBlock
	^ self new
		stream: aString readStream;
		absentBlock: aBlock;
		lookup: aStructure