helpers
createUploadedFilepath: filename
	| pathroot currentStructure structurePath destinationDirectory pathRootNoTrailingSlash |
	
	pathroot := self application fileuploadPathRoot.
	
	currentStructure := self context structure.
	structurePath := currentStructure absolutePath copyReplaceAll: '/' with: GRPlatform current pathSeparator .
	
	pathRootNoTrailingSlash := (FileDirectory on: pathroot) pathName.
	destinationDirectory := FileDirectory on: (pathRootNoTrailingSlash, structurePath).
	
	NAExternalFile ensureDirectoryExists: destinationDirectory pathName.
	
	^  (destinationDirectory / filename) pathName