streaming
nextPutAll: anObject
	anObject greaseString do: [ :each | self nextPut: each ]