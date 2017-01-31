accessing
comment
	^ comment ifNil: [ comment := self buildComment ]