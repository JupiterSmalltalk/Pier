accessing-configuration
readStreamOn: aCollection
	^ ReferenceStream on: (RWBinaryOrTextStream with: aCollection asByteArray) reset