accessing
structure
	^ structure ifNil: [ structure := PRKernel defaultInfoSyntax ]