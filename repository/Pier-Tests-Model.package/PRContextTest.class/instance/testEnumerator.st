tests
testEnumerator
	| array |
	array := self context enumerator contents.
	self assert: array first name = 'folder'.
	self assert: array size = 1