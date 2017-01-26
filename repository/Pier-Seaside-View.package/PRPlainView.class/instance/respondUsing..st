responding
respondUsing: aResponse
	super respondUsing: aResponse.
	aResponse contentType: 'text/plain'.
	PRTextWriter
		write: self context structure document
		to: aResponse stream