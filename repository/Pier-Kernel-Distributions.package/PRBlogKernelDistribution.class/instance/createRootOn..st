creation
createRootOn: theKernel
	super createRootOn: theKernel.
	
	self sampleContentSelected ifTrue: [
		self addSampleContent ].
	
	self importBlogFromUrl notNil ifTrue: [
		| result |
		result := calleeComponent call: (PRBlogImporter blogStructure: self blog blogUrl: self importBlogFromUrl).
		result ifFalse: [ ^ nil ] ].
	
	self flag: #todo. "allow importing  Workpress styles"

	self clearInternalLinkTargetsStartingAt: theKernel root.
	
	^ theKernel