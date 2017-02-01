private
processGetChildrenCallback
	|  result| 

	result := getChildrenCallback value: (JSTreeNode newFromWARequest: self requestContext request).
	self requestContext respond: 
			[:response |
			response
				doNotCache;
				contentType: (WAMimeType applicationJson charset: self requestContext handler charSet).
			result jsonOn: response stream]