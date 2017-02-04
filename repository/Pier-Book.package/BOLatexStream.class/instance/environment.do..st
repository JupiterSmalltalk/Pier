convenience
environment: aString do: anObject
	self tag: 'begin'; curly: aString; lf.
	self print: anObject.
	self tag: 'end'; curly: aString; lf