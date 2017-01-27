processing
initialRequest: aRequest
	| structure following |
	super initialRequest: aRequest.
	self addContextFilter.
	following := self context
		structure: (structure := self 
			parseStructure: aRequest 
			ifAbsent: [ ^ self notFound ])
		command: (self
			parseCommand: aRequest
			structure: structure).
	following command
		initialRequest: aRequest.
	self context: following