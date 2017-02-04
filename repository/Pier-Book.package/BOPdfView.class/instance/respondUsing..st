responding
respondUsing: aResponse
	super respondUsing: aResponse.
	aResponse
		binary;
		contentType: 'application/pdf';
		attachmentWithFileName: self book name , '.pdf'.
	self renderPdfOn: aResponse stream