rendering
renderContentOn: html
	focus isNil
		ifTrue: [ self renderCloudOn: html ]
		ifFalse: [ self renderFocusOn: html ]