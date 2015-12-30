rendering
renderErrorOn: html
	html paragraph: [ 
		html text: 'You are not allowed to '.
		html text: (forbidden isNil
			ifTrue: [ 'view' ]
			ifFalse: [ forbidden command class label asLowercase ]).
		html text: ' this page.' ]