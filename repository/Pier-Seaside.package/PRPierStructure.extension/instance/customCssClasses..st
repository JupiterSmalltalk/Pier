*pier-seaside-accessing
customCssClasses: aString
	^ aString isEmptyOrNil
		ifTrue: [ self properties removeKey: #customCssClasses ifAbsent: [ ] ]
		ifFalse: [ self propertyAt: #customCssClasses put: aString ]
