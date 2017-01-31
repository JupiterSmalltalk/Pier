rendering-parts
renderAuthorForPost: aPost on: html
	aPost author ifNil: [^ self].
	html space.
	html span
		class: 'author';
		with: 'by ', aPost author.