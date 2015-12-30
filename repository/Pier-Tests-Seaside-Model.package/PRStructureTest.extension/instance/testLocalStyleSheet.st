*pier-tests-seaside-model
testLocalStyleSheet
	| file |
	file := PRFile new.
	root localStyleSheet: file.
	self assert: root localStyleSheet = file.
	self assert: folder localStyleSheet isNil.