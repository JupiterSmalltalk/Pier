renderering hijax
renderResponseForUrl: callbackUrl  requestType: requestType callbackId: callbackId
	| newRequestContext |
	
	newRequestContext := self generateRequestContextFor: callbackUrl requestType: requestType callbackId: callbackId.
	[ self session handle: newRequestContext ] 
		on: WAResponseNotification
		do: [ :n | "we've rendered a response, drop through" ].

	^ newRequestContext