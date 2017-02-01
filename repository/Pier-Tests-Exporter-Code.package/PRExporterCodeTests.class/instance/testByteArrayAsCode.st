tests
testByteArrayAsCode
	self assert: (#(0 0 1 146 0 0 0 97 0 0 1 144 0 0 0 98) asByteArray) asCode equals: '(#(0 0 1 146 0 0 0 97 0 0 1 144 0 0 0 98) asByteArray)'