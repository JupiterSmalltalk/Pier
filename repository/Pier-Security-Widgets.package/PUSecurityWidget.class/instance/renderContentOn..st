rendering
renderContentOn: html
	| user |
	user := self context user.
	user isNil ifTrue: [ ^ self ].
	html span 
		class: 'changePassword'; 
		with: [
			html anchor
				goto: (self context command: PUEditUser new); 
				with: 'change password' ]