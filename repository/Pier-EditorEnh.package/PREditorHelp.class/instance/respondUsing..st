responding
respondUsing: aResponse
	super respondUsing: aResponse.
	aResponse
		cacheForever;
		contentType: 'text/html';
		nextPutAll: (self rendererClass builder
			fullDocument: true;
			rootBlock: [ :root | self updateRoot: root ];
			render: [ :html | | renderer |
				renderer := PRViewRenderer new.
				renderer withinContentDo: [
					renderer
					start: self structure
					in: self on: html ] ])