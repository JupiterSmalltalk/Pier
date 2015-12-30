accessing
writeStream
	^ writeStream ifNil: [ writeStream := self emptyWriteStream ]