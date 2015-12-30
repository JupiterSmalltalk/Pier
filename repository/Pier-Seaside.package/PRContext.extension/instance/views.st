*pier-seaside-accessing
views
	"Answer a list of possible views, dispatching trough the command class."

	^ PRViewComponent withAllConcreteClasses
		select: [ :each | each isValidIn: self ]