visiting-document
visitExternalLink: anExternalLink
	latex
		tag: 'href';
		curly: [ stream nextPutAll: anExternalLink url ];
		curly: [ super visitExternalLink: anExternalLink ]