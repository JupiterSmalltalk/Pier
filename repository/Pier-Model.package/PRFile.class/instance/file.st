accessing
file
	^ file ifNil: [ file := self fileModel new ]