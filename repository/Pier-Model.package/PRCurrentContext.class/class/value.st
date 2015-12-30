accessing
value
	"This is the read accessor of the current context."

	| holder |
	holder := PRCurrentContextHolder value.
	^ holder isNil ifFalse: [ holder context ]