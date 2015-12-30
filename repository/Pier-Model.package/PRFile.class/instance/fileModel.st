accessing
fileModel
	^ (self magritteDescription detect: [ :each | each = self descriptionFile ]) kind