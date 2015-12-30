private
find: aStructureClass
	^ self context structure findAncestor: [ :each | each isKindOf: aStructureClass ]