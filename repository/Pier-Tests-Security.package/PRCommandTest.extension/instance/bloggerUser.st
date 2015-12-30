*pier-tests-security-accessing
bloggerUser
	^ self kernel 
		userNamed: 'james'
		ifNone: [ self kernel users add: self bloggerUserInstance ]