convenience
curly: anObject
	stream nextPut: ${.
	self print: anObject.
	stream nextPut: $}