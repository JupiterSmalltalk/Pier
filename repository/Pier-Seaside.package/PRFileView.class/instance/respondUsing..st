responding
respondUsing: aResponse
	| file |
	file := self context structure file.
	
	aResponse
		binary;
		cacheForever;
		contentType: file mimetype seasideMimeType;
		headerAt: 'Content-Disposition' put: 'inline; filename="' , file filename , '"';
		nextPutAll:  file contents;
		respond