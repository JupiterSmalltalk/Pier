private
validateKernel
	"Validate that the source and target are contained within the same kernel. This is done by comparing the root structure."
	
	self hasCommonPath
		ifFalse: [ PRInvalidKernelError signal: 'Unable to reference external wiki.' ]