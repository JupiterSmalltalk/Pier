enumerating
do: aBlock for: aStructure
	"Evaluates aBlock in chronological order for every item in the history of aStructure. Subclasses might want to override the default implementation for efficiency."

	self do: [ :each |
		each structure = aStructure
			ifTrue: [ aBlock value: each ] ]