creation
createRootOn: theKernel
	super createRootOn: theKernel.
	
	self sampleContentSelected ifTrue: [
		self addSampleContent ].
	
	self clearInternalLinkTargetsStartingAt: theKernel root.
	
	^ theKernel