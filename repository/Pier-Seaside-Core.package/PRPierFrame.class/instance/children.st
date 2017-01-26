accessing-dynamic
children
	^ children ifNil: [ children := self buildChildren ]