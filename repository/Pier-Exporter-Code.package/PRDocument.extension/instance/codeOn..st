*pier-exporter-code
codeOn: aStream
	aStream nextPut: $'; nextPutAll: (self writerClass write: self); nextPut: $'