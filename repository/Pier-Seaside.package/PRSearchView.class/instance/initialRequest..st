initialization
initialRequest: aRequest
	super initialRequest: aRequest.
	aRequest fields 
		at: self queryFieldName
		ifPresent: [ :value | self query: value ]