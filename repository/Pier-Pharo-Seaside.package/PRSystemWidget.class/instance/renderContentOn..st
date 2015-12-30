rendering
renderContentOn: html
	html preformatted: 'Does not work anymore'.
	self isSuperuser ifTrue: [ self renderActionsOn: html ]