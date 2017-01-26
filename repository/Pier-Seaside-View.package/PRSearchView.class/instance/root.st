accessing
root
	^ root ifNil: [ root := self context root ]