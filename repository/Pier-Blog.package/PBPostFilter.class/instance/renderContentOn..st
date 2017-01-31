rendering
renderContentOn: html
	self blog isNil
		ifTrue: [ html text: '(no blog found)' ]
		ifFalse: [ self renderBlogOn: html ]