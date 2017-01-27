actions
flush
	| context |
	context := PRCurrentContext value.
	context isNil ifFalse: [ context flushComponent: self ]