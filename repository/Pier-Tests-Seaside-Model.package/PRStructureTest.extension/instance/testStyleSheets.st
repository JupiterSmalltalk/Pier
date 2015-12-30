*pier-tests-seaside-model
testStyleSheets
	| rootCss childCss |
	rootCss := PRFile new yourself.
	childCss := PRFile new contents: 'something'; yourself.
	root localStyleSheet: rootCss.
	child localStyleSheet: childCss.
	self assert: root styleSheets size = 1.
	self assert: root styleSheets first = rootCss.
	self assert: folder styleSheets size = 1.
	self assert: folder styleSheets first = rootCss.
	self assert: child styleSheets size = 2.
	self assert: child styleSheets last = childCss.
	self assert: child styleSheets first = rootCss	