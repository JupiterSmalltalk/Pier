visiting
visit: anObject
	| result |
	items addLast: anObject.
	result := super visit: anObject.
	items removeLast.
	^ result