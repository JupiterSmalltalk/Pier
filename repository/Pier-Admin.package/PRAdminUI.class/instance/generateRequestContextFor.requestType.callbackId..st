renderering hijax
generateRequestContextFor: callbackUrl requestType: requestType callbackId: callbackId
	| requestContext newRequest newRequestContext postFields callbackUrlString |
	requestContext := self requestContext.
	callbackUrlString := callbackUrl greaseString.

	"ensure the action continuation directly renders a response rather than a redirect
	see: PRAdminActionPhaseContinuation"
	callbackUrl queryFields at: 'dontRedirect' put: 'true'.
	newRequest := WARequest method: requestType uri: callbackUrl.
	
	"purge the request of Seaside fields; _s _k
	these fields are associated with the Ajax request.
	The _k field we require is encoded in the callbackUrl"
	postFields := requestContext request postFields.
	postFields 
		removeKey: self application keyField ifAbsent: [ "do nothing" ];
		removeKey: self session actionField ifAbsent: [ "do nothing" ].
	
	"remove the key which has triggered this Ajax request - to avoid recursion"
	postFields removeKey: callbackId ifAbsent: [ "do nothing" ].
	
	"remove the key containing the url"
	postFields copy keysAndValuesDo: [ :key :value |
		value = callbackUrlString ifTrue: [
			postFields removeKey: key ] ].
	
	newRequest setPostFields: postFields.
	newRequestContext := PRAdminRequestContext 
		request: newRequest
		response: WABufferedResponse new
		codec: requestContext codec.
		
	newRequestContext handlers
		add: requestContext session;
		add: requestContext application.
		
	^ newRequestContext