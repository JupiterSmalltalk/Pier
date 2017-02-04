rendering-listing
renderNote: aNote on: html
	html div class: 'note'; with: [ 
		self renderNoteMeta: aNote on: html.
		self renderNoteBody: aNote on: html ]