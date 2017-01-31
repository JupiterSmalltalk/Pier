rendering-parts
renderData: aContext on: html
	aContext command magritteDescription do: [ :each |
		each isDocumentDescription ifTrue: [
			PBRssRenderer new
				start: (aContext 	command readUsing: each)
				in: self on: html ] ]