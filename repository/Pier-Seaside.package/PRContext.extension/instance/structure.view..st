*pier-seaside-navigation
structure: aStructure view: aViewComponentClass
	"Create a copy of the current context with the current structure replaced by ==aStructure== and the current view by ==aViewComponent==."

	^ self structure: aStructure command: (aStructure viewCommandClass new
		viewComponentClass: aViewComponentClass;
		yourself)