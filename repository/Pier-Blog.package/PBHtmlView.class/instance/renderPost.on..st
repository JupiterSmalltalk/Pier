rendering
renderPost: aPost on: html 
	html div class: 'post'; with: [ 
		self renderHeading: aPost on: html.
		self render: aPost on: html.
		self renderMeta: aPost on: html ]