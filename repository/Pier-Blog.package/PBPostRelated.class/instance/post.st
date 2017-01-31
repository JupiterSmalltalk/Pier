accessing
post
	^ post ifNil: [ post := self findPost ]