creation
showCustomizeUIOn: calleeComponent thenAddRootToKernel:  theKernel
	"no customization to be performed - simply add PRKernel's #defaultRoot"
	theKernel root: PRKernel defaultRoot.
	^ theKernel