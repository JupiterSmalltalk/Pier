private
kernelInstance
	^ PRKernel new
		root: ((PRPage named: 'root')
			addChild: (PRPage named: 'folder');
			addChild: (self structure);
			yourself);
		yourself