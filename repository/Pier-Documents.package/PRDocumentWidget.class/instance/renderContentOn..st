rendering
renderContentOn: html
	self isEditing 
		ifTrue: [ self renderEditOn: html ] 
		ifFalse: [ self renderViewOn: html ]