*pier-exporter-code
codeMultiByteStringAsUTF8ByteArrayOn: aStream
	| uft8EncodedString |

	uft8EncodedString := (GRCodec forEncoding: 'utf-8') encode: self.
	aStream << '((GRCodec forEncoding: ''utf-8'') decode: '. uft8EncodedString asByteArray codeOn: aStream. aStream nextPut: $)