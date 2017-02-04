accessing
book
	^ book ifNil: [ book := self findBook ]