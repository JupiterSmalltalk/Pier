*pier-exporter-code
codeOn: aStream
	aStream nextPut: ${.
	self do: [ :each | each codeOn: aStream ] separatedBy: [ aStream nextPutAll: '. ' ].
	aStream nextPut: $}