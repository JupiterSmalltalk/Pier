accessing
comments
	^ comments ifNil: [ comments := self findComments ]