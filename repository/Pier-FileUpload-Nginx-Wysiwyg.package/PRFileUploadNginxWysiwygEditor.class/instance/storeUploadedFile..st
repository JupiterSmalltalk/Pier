file upload callback
storeUploadedFile: file
	| destinationFilepath shellMoveFileCommand webifiedFilename |

	webifiedFilename := self webifyFilename: file filename.
	destinationFilepath := self createUploadedFilepath: webifiedFilename.
	shellMoveFileCommand := String streamContents: [:stream |
		stream 
			nextPutAll: 'mv ';
			nextPutAll: file filepath;
			nextPutAll: ' ''';
			nextPutAll: destinationFilepath;
			nextPutAll: '''' ].
		
	SpEnvironment runShellCommandString: shellMoveFileCommand.
	
	file 
		filepath: destinationFilepath;
		url: (self createUploadedUrl: webifiedFilename).
		
	self createUploadedStructure: file.
	
	^ file