rendering-listing
renderNotes: aCollection on: html
	aCollection isEmpty
		ifTrue: [ ^ self ].
	html div class: 'listing'; with: [
		html heading: 'User Contributed Notes'.
		aCollection do: [ :each |
			self renderNote: each on: html ] ]