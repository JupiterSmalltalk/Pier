processing-errors
notFound
	"This method is called whenever the current request cannot be resolved to a structure."
	
	self context: (self context
		structure: self context root
		view: PRNotFoundView)