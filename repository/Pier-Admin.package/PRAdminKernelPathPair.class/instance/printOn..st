printing
printOn: aStream
	aStream 
		nextPutAll: 'kernel (';
		nextPutAll: self kernel name;
		nextPutAll: '), path (';
		nextPutAll: self path;
		nextPut: $)