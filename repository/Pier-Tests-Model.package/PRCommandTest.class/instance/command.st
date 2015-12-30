accessing
command
	^ command ifNil: [ command := self actualInstance ]