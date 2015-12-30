*pier-tests-model
kernelInstance
	^ PRKernel new
		name: 'test';
		root: self rootInstance;
		persistency: self persistencyInstance;
		yourself