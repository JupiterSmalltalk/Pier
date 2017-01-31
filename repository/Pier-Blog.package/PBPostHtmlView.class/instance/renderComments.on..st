rendering
renderComments: aCollection on: html
	html anchor name: #comments.
	aCollection isEmpty
		ifFalse: [
			html heading level: 2; with: 'Comments' ].
	aCollection do: [ :each |
		html div class: 'comment'; with: [
			html anchor name: each uuid.
			self render: each on: html.
			self renderMeta: each on: html ] ]