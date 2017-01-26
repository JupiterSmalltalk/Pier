*pier-seaside-core-accessing
menu: aString
	(aString isNil or: [ aString isEmpty or: [ aString = self title ] ])
		ifTrue: [ self properties removeKey: #menu ifAbsent: [ ] ]
		ifFalse: [ self propertyAt: #menu put: aString ]