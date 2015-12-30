accessing
selected
	^ self context command isView
		ifTrue: [ self context command viewComponent class ]