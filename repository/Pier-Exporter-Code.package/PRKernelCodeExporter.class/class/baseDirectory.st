accessing
baseDirectory
	^baseDirectory ifNil: [ ^baseDirectory := FileSystem disk workingDirectory ]