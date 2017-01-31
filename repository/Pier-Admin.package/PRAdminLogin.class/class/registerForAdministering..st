initialize
registerForAdministering: kernelPathPair
	| adminInstancePath |
	
	adminInstancePath := kernelPathPair path, '-admin'.
	self registerAt: adminInstancePath administering: kernelPathPair.
	^ adminInstancePath