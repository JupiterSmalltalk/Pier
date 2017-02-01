updating
sourceChildren
	^ self source isNil
		ifTrue: [ #() ]
		ifFalse: [ self source enumerator contents ]