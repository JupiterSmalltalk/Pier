*pier-model-magritte
stringAccessor
	^self propertyAt: #stringAccessor ifAbsent: [ self defaultStringAccessor ]