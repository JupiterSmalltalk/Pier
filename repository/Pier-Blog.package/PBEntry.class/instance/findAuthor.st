private
findAuthor
	| context user |
	context := PRCurrentContext value
		ifNil: [ ^ nil ].
	user := (context
		propertyAt: #user
		ifAbsent: [ ^ nil ])
			ifNil: [ ^ nil ].
	^ user fullName