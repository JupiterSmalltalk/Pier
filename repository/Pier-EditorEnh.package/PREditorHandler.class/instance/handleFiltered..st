processing
handleFiltered: aRequestContext
	aRequestContext respond: [ :response |
		response
			contentType: 'text/plain';
			nextPutAll: (WAHtmlCanvas builder
				render: [ :html | self renderLinksOn: html ]) ]