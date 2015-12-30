navigation
structure: aStructure
	"Create a copy of the current context with the current structure replaced by ==aStructure== and the current command replaced by the default view."

	^ self structure: aStructure command: aStructure viewCommandClass new