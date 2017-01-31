rendering
renderAuthor: anEntry on: html
	(anEntry isPost or: [ anEntry website isEmptyOrNil ])
		ifTrue: [ ^ super renderAuthor: anEntry on: html ].
	html span class: 'author'; with: [
		html text: 'by '.
		html anchor
			url: anEntry website;
			with: (anEntry author
				ifNil: [ anEntry website ]) ].
	html text: ' '