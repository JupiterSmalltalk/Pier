examples
exampleDocumentation
	"Create a (static) Pier instance from all the comments in the source code of pier, a sort of poor mans documentation. It might take a while to get all the classes traversed and to parse the source."

	^ self on: (PRContext kernel: self exampleDocumentationKernel)