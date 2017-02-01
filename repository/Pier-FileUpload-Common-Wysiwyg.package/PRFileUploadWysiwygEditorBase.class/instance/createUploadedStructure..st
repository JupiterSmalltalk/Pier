helpers
createUploadedStructure: file
	| currentStructure structureName fileStructure |
	
	currentStructure := self context structure.
	structureName := self createValidName: file filename.
	fileStructure := (PRFile named: structureName) 
		file: file;
		yourself.
		
	"ensure the current structure doesn't already have a child structure of the same name"
	currentStructure childrenDecoration children 
		detect: [ :each | each name = structureName ]
		ifNone: [ 
			currentStructure
				addChild: fileStructure ].
			
	^ fileStructure