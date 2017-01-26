accessing
contexts
	^ contexts ifNil: [ contexts := self buildList ]