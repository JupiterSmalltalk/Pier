rendering-listing
renderNoteMeta: aNote on: html 
	html div class: 'meta'; with: [
		self renderNoteMetaAuthor: aNote on: html.
		self renderNoteMetaPublication: aNote on: html.
		self renderNoteMetaCommands: aNote on: html ]