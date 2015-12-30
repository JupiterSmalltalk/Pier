examples
exampleDocumentationKernel
	"Create a Pier kernel from all the comments in the source code of pier, a sort of poor mans documentation. It might take a while to get all the classes traversed and to parse the source."

	^ PRKernel new
			name: 'Documentation';
			root: self exampleDocumentationRoot;
			yourself