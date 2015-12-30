running
editTitle: aString
	| context |
	context := PRContext 
		kernel: self kernel 
		structure: self kernel root
		command: (PREditCommand new
			write: aString
			using: PRPage new descriptionTitle).
	^ context command