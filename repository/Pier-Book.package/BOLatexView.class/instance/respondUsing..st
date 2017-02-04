responding
respondUsing: aResponse
	super respondUsing: aResponse.
	aResponse
		contentType: 'text/latex';
		attachmentWithFileName: self book name , '.tex'.
	self writer write: self book to: aResponse stream