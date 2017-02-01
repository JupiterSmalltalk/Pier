file upload callback
storeUploadedFile: file
    | stream destinationFilepath destinationDirectory storedFile filename fileStructure |

	filename := self createValidName: file fileName.
	destinationFilepath := self createUploadedFilepath: filename.
	
	destinationDirectory := (FileDirectory forFileName: destinationFilepath).
    	stream := destinationDirectory forceNewFileNamed: filename.
	[  stream 
		binary; 
		nextPutAll: 
		file rawContents ] 
	ensure: [ stream close ].
	
	storedFile := (NAExternalFile filesize: file size filename: filename filepath: destinationFilepath  mimetype: file contentType).
	fileStructure := self createUploadedStructure: storedFile.
	storedFile url: fileStructure url.
	
	^ storedFile