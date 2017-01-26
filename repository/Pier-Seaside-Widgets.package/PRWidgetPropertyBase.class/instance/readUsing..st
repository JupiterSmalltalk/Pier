private-model
readUsing: aDescription
	^ self propertyAt: aDescription ifAbsent: [ aDescription default ]