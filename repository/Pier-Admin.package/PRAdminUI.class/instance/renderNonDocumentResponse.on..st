rendering
renderNonDocumentResponse: response on: html
	response contentType seasideMimeType = WAMimeType textHtml
		ifTrue: [ html html: response contents ]
		ifFalse: [ html text: response contents ]