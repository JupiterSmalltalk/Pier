accessing
note
	^ note ifNil: [ note := self buildNote ]