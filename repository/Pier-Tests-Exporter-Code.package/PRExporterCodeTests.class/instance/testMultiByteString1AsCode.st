tests
testMultiByteString1AsCode
	| multibyteString |
	multibyteString := ('Here is a Euro: ' copyWith: (Character value: 16r20AC)), ' character'.
	self assert: multibyteString asCode equals: '((''Here is a Euro: '' copyWith: (Character value: 8364)), ('' character''))'