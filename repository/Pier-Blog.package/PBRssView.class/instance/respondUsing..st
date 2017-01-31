responding
respondUsing: aResponse
	super respondUsing: aResponse.
	aResponse
		contentType: (WAMimeType
			applicationRssXml
			charset: RRRssRoot defaultCharSet;
			yourself);
		doNotCache;
		nextPutAll: (RRRssRenderCanvas builder
			fullDocument: true;
			render: [ :canvas | self renderRssOn: canvas ])