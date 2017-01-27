*pier-model
stringAccessor
	^self propertyAt: #stringAccessor ifAbsent: [ self defaultStringAccessor ]