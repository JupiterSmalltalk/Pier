removing
removeDecoration: aDecoration
	"Remove ==aDecoration== from the receiver, an error is raised if ==aDecoration== is not part of the receiver."

	^ self
		removeDecoration: aDecoration
		ifAbsent: [ PRDecorationError signal: 'Decoration is not part of receiver.' ]