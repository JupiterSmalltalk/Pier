rendering
renderContentOn: html
	self context structure isPublication
		ifFalse: [ ^ self ].
	html div class: 'notes'; with: [
		self renderNotes: self notes on: html.
		self renderAddOn: html ]