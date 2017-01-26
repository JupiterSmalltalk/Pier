*pier-seaside-core-accessing
menu
	^ self propertyAt: #menu ifAbsent: [ self title ]