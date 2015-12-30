testing
isAbstract
	^ self sixxReadStreamClass isNil or: [ self sixxWriteStreamClass isNil ] 