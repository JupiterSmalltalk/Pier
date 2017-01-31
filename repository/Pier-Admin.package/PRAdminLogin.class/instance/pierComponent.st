accessing
pierComponent
	^ pierComponent ifNil: [
		pierComponent := PRAdminPierComponent kernel: self kernelPathPair kernel ]