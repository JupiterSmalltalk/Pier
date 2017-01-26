rendering
renderContentOn: html
	self isSuperuser
		ifFalse: [ ^ html paragraph: 'Only adminstrators can edit the file settings.' ].
	html render: self children