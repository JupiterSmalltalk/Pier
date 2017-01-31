check defaults
isCommonDefault: aDescription
	| accessor defaultCheckBlock |
	
	"Unfortunately the description frequently doesn't define a default value, but there are a common set of defaults we don't need to write.
	We key off the readSelector and check against a dictionary for common defaults"
	accessor := aDescription accessor.
	(accessor class canUnderstand: #readSelector) ifFalse: [ ^ false ].
	defaultCheckBlock := self selectorsWithCommonDefaults at: accessor readSelector ifAbsent: [ ^ false ].
	
	^ defaultCheckBlock value