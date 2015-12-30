accessing-scope
all
	^ all ifNil: [ all := self class defaultAll ]