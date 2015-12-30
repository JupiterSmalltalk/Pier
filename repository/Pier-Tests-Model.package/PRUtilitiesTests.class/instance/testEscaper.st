tests-escaper
testEscaper
	| visitor |
	visitor := PRVisitor basicNew initialize; yourself.

	self assert: (visitor withEscaper: [ true ]).
	self deny: (visitor withEscaper: [ false ]).

	self assert: (visitor withEscaper: [ visitor escape: true. false ]).
	self deny: (visitor withEscaper: [ visitor escape: false. true ])