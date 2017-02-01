events
moveCallbackResponse

	| event |
	event := JSTreeEvent newFromWARequest: self requestContext request.
	^self requestContext respond: 
			[:response |
			response
				doNotCache;
				contentType: (WAMimeType textJavascript charset: self requestContext handler charSet).
			[self script: [:s | (events at: event event) value: event value: s] on: response stream] on: JSTreeError
				do: 
					[:ex |
					response badRequest.
					(response stream)
						nextPutAll: ex class name;
						nextPutAll: ': ';
						nextPutAll: ex messageText]]