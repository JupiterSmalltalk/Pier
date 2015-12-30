instance creation
of: aChildStructure in: aParentStructure
	^ (self structure: aParentStructure)
		signal: aChildStructure title printString , ' can not be a child of ' , aParentStructure title printString