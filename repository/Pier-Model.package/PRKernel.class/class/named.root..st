instance creation
named: aString root: aStructure
	"Create a new kernel named aString with the root aStructure."

	^ self instances add: (self new
		name: aString;
		root: aStructure;
		yourself)