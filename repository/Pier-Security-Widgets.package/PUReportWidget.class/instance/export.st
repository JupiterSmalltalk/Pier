actions
export
	self requestContext response
		document: self report export
			mimeType: 'application/excel'
			fileName: self context structure name , '.xls';
		respond