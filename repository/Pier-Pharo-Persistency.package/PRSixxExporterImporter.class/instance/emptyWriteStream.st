accessing-configuration
emptyWriteStream
	^ self class sixxWriteStreamClass on: (RWBinaryOrTextStream on: ByteString new)