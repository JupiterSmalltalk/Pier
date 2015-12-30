accessing
targetContext
	^ targetContext ifNil: [ targetContext := self contexts at: 1 ifAbsent: [ nil ] ]