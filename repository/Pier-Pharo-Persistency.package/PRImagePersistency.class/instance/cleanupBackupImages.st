private
cleanupBackupImages
	| images |
	maxImages isNil ifTrue: [ ^ self ].
	images := FileDirectory default fileNames select: [ :each | 
		(each endsWith: FileDirectory imageSuffix) 
			and: [ each beginsWith: namePrefix ] ].
	images size <= maxImages ifTrue: [ ^ self ].
	images := (images asSortedCollection allButLast: maxImages)
		collect: [ :each | each copyUpToLast: $. ].
	images do: [ :each |
		FileDirectory default 
			deleteFileNamed: (each , '.' , FileDirectory imageSuffix)
			ifAbsent: [ ].
		FileDirectory default 
			deleteFileNamed: (each , '.' , FileDirectory changeSuffix)
			ifAbsent: [ ] ]