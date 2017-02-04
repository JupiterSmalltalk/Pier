initialization
resetFilesToFigures
	"This used to be called on #initialize but caused problems on Gemstone
	I think it can probably be removed as it looks like a migration method
	from a previous version"
	PRFile allInstances do: [ :structure |
		(structure findAncestor: [ :each | each isPublication ]) notNil
			ifTrue: [ structure primitiveChangeClassTo: self basicNew ] ]