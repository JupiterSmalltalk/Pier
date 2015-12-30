evaluation
expand: aString with: anObject
	^ aString isEmptyOrNil
		ifTrue: [ aString ]
		ifFalse: [ self expandFrom: aString readStream with: anObject ]