rendering-meta
renderAuthor: anEntry on: html
	anEntry author ifNil: [ ^ self ].
	html span
		class: 'author';
		with: 'by ' , anEntry author.
	html text: ' '