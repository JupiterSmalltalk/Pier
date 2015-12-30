processing-errors
forbidden: aContext
	"This method is called whenever aContext is forbidden to be accessed. If everything fails, we show a plain error notification."
	
	| error |
	error := aContext
		structure: aContext structure
		view: PRForbiddenView.
	[ error structure isRoot or: [ error isValid ] ] whileFalse: [ 
		error := error
			structure: error structure parent
			view: PRForbiddenView ].
	error command viewComponent 
		forbidden: aContext copy.
	error isValid
		ifTrue: [ self context: error ]
		ifFalse: [
			self requestContext responseGenerator
				forbidden;
				respond ]