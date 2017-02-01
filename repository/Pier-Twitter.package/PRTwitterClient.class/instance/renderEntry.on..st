rendering
renderEntry: aStatus on: html
	html span class: 'status-body'; with: [
		html span
			class: 'entry-content';
			with: [ self renderEntryContent: aStatus on: html ].
		html span
			class: 'entry-meta';
			with: [ self renderEntryMeta: aStatus on: html ] ]