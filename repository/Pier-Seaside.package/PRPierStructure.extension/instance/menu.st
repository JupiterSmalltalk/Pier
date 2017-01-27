*pier-seaside-accessing
menu
	^ self propertyAt: #menu ifAbsent: [ self title ]