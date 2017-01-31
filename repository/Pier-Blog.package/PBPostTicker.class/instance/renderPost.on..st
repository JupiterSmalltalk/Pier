rendering
renderPost: aPost on: html
	html anchor
		goto: (self context structure: aPost);
		with: [ html html: aPost title ].
	html div class: 'timestamp'; with: [
		self renderDateForPost: aPost on: html.
		self renderTimeForPost: aPost on: html.
		self renderAuthorForPost: aPost on: html ].
	html div
		class: 'summary';
		with: [ html html: (self summaryOf: aPost) ]