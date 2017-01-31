*pier-exporter-code
codeOn: aStream
	aStream << '#('.
	self do: [ :each | each codeOn: aStream ] separatedBy: [ aStream nextPutAll: ' '].
	aStream << ')'