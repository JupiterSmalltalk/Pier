context menu
renameCallbackNewName: newName structure: structure on: script
	| oldjQueryNodeId newJQueryNodeId |
	newName = structure name ifTrue: [
		^ self ].
	
	(PRPath isValidName: newName) ifFalse: [ 
		script << 
			(JSStream on: 'renameError(''Rename failed. The new name: "', newName, '", contains invalid characters.'')').
		^ self ].
		
	structure parent childrenDecoration at: newName ifPresent: [ :childStructure |
		 script << 
			(JSStream on: 'renameError(''Renamed failed. The new name: "', newName, '", is the same name as an existing element.'')').
		^ self ].
		
	oldjQueryNodeId := self convertStructureToId: structure.
	
	structure name: newName.
	
	newJQueryNodeId := self convertStructureToId: structure.
	
	script << (script jQuery id: oldjQueryNodeId) attributeAt: 'id' put: newJQueryNodeId.
	script << (script jQuery id: newJQueryNodeId) dataAt: 'absolutePath'  put: structure absolutePath