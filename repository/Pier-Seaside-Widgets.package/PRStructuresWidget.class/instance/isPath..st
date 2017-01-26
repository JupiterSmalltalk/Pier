testing
isPath: aStructure
	"Test if aStructure is within the path of the currently active structure."
	
	^ (self isActive: aStructure) not and: [ self selected parents includes: aStructure ]