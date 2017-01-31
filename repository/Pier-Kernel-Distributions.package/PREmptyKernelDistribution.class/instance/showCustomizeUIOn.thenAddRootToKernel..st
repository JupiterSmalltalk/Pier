creation
showCustomizeUIOn: calleeComponent thenAddRootToKernel:  theKernel
	"no customization to be performed"
	theKernel root: 
		((PRPage named: 'root')
		contents: 'An minimal kernel, with just this one page and an empty template.';
		localEnvironment: ((PRComponent named: 'contents')
			prototypeInstance: (PRContentsWidget new heading: ''; yourself);
			yourself);
		yourself).
	^ theKernel