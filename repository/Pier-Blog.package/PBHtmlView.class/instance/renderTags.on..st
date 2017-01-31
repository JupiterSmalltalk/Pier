rendering-meta
renderTags: anEntry on: html
	anEntry isPost ifFalse: [ ^ self ].
	anEntry tags isEmpty ifTrue: [ ^ self ].
	html span class: 'tags'; with: [
		html text: 'with tags '.
		anEntry tags
			do: [ :each |
				html anchor
					callback: [ self filter: each ];
					with: each ]
			separatedBy: [ html text: ', ' ] ].
	html text: ' '