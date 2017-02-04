convenience
square: anObject
	stream nextPut: $[.
	self print: anObject.
	stream nextPut: $]