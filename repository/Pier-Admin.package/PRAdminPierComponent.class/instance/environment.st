accessing
environment
	self isShowingPreview ifTrue: [ ^ super environment ].
	self isEditing ifTrue: [ ^ self editingEnvironment ].
	
	^ PRStructure emptyEnvironment