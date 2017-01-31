initialization
initialRequest: aRequest
	super initialRequest: aRequest.
	tags := (aRequest queryFields at: 'tags' ifAbsent: [ '' ])
		findTokens: $,