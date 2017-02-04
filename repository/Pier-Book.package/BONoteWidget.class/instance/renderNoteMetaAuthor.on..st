rendering-listing
renderNoteMetaAuthor: aNote on: html
	html span
		class: 'author';
		with: aNote author.
	html text: ' '