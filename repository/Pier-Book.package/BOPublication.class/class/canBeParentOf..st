testing
canBeParentOf: aStructureClass
	^ self childClasses anySatisfy: [ :class | aStructureClass includesBehavior: class ]