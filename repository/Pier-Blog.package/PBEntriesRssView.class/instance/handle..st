responding
handle: aRequestContext
	(self shouldForward: aRequestContext)
		ifFalse: [ super handle: aRequestContext ]
		ifTrue: [
			aRequestContext responseGenerator
				redirectTo: self blog feedForward;
				respond ]