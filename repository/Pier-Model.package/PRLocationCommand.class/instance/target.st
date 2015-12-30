accessing
target
	^ target ifNil: [ target := self defaultTarget ]