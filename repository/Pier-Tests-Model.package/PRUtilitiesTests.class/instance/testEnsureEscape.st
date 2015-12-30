tests-escaper
testEnsureEscape
	| visitor tag |
	visitor := PRVisitor basicNew initialize; yourself.
	tag := nil.

	self assert: (visitor withEscaper: [
		[ true ]
			ensure: [ tag := 1 ] ]).
	self assert: tag = 1.

	self assert: (visitor withEscaper: [
		[ visitor escape: true ]
			ensure: [ tag := 2 ] ]).
	self assert: tag = 2