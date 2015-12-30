*pier-tests-security-accessing
bloggerGroup
	^ self kernel 
		groupNamed: 'blogger'
		ifNone: [ self kernel groups add: self bloggerGroupInstance ]