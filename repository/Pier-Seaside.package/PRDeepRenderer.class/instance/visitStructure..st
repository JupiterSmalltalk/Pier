visiting-structure
visitStructure: aStructure
	self 
		structure: aStructure
		during: [ self visit: aStructure document ]