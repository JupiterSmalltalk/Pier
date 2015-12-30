visiting-structure
visitComponent: aStructure
	parent 
		structure: aStructure
		during: [ html render: (self context componentFor: link) ]