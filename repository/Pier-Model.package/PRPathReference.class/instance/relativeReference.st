actions
relativeReference
	self validateKernel.
	self removeCommonPath.
	self source = self target 
		ifTrue: [ ^ self class currentStructure ].
	self sourcePath reverseDo: [ :each |
		self writeParent; writeDelimiter ].
	self targetPath 	
		do: [ :each | self visit: each; writeDelimiter ].
	^ self stream skip: -1; contents
