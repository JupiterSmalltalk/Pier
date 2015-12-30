accessing
child
	^ child ifNil: [ child := self childInstance ]