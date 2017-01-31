helper
errorTextFromException: exception
	exception messageText isEmptyOrNil
		ifTrue: [ 
			| exceptionDescription |
			exceptionDescription := exception class label.
			(exceptionDescription beginsWith: 'Zn ' ) ifTrue: [
				exceptionDescription := exceptionDescription allButFirst: 3 ].
			self errorMessage: 'Error importing blog: ', exceptionDescription ]
		ifFalse: [ self errorMessage: 'Error importing blog: ', exception messageText ]