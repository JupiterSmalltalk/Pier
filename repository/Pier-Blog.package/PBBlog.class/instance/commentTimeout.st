accessing
commentTimeout
	^ commentTimeout ifNil: [ commentTimeout := 14 days ]