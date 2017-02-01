tests
testMultiByteString2AsCode
	| multibyteString |
	multibyteString := String with: (Character value: 16r1F00) with: (Character value: 16r1F01) with: (Character value: 16r1F02).
	self assert: multibyteString asCode equals: '((GRCodec forEncoding: ''utf-8'') decode: (#(225 188 128 225 188 129 225 188 130) asByteArray))'