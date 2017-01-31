accessing
website: aString
	website := (aString isEmptyOrNil or: [ aString includesSubstring: '://' caseSensitive: true ])
		ifFalse: [ website := 'http://' , aString ]
		ifTrue: [ aString ]