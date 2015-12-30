tests-escaper
testHasEscaper
	| visitor |
	visitor :=  PRVisitor basicNew initialize; yourself.
	self deny: visitor hasEscaper.
	self assert: (visitor withEscaper: [ visitor hasEscaper ])