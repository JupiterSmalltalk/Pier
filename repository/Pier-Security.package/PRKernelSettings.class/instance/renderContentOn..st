rendering
renderContentOn: html
	self isSuperuser
		ifFalse: [ ^ html paragraph: 'Only adminstrators can edit the kernel settings.' ].
	html render: self children