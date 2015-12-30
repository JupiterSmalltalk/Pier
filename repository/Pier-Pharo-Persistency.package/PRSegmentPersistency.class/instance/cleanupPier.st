cleanup
cleanupPier
	"Clear all registered kernels. We don't want references to our model from outside."
	<cleanup>
	
	PRKernel instVarNamed: 'Instances' put: nil