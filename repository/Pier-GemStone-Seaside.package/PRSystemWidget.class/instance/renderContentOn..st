rendering
renderContentOn: html
	html preformatted: 'No VM statistics right now'.
	self isSuperuser ifTrue: [ self renderActionsOn: html ]