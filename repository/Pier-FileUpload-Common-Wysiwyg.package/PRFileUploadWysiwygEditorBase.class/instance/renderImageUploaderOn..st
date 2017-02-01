rendering
renderImageUploaderOn: html
	| imageUploaderHtml |	
	imageUploaderHtml := String streamContents: [ :aStream |
		| document |
		document := WAHtmlDocument on: aStream codec: self requestContext codec.
		document scriptGenerator: JQScriptGenerator new.
		html context document: document during: [
			(WARenderCanvas context:  html context)
				render: [ :r | 
					self renderUploaderOn: r.
					r flush.
					self createUploadScript: document ] ] ].
	
	^ imageUploaderHtml asJavascript