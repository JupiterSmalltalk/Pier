accessing
sourceContext
	^ sourceContext ifNil: [ sourceContext := self contexts at: 2 ifAbsent: [ nil ] ]