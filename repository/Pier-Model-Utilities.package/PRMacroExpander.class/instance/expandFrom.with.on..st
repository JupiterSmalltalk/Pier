private
expandFrom: aReadStream with: anObject on: aWriteStream
	| accessor char result |
	accessor := self table
		at: (char := aReadStream next)
		ifAbsent: [ nil ].
	accessor isNil
		ifTrue: [ aWriteStream nextPut: char ]
		ifFalse: [ 
			result := accessor read: anObject.
			result isNil
				ifFalse: [ aWriteStream nextPutAll: result ] ]