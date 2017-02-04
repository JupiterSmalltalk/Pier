convenience
comment: anObject
	stream
		nextPut: $%;
		space;
		nextPutAll: anObject greaseString;
		nextPut: Character lf