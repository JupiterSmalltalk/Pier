accessing
command
	^ command ifNil: [ command := self buildCommand ]