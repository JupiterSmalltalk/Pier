visiting
continue: anObject in: aComponent on: aRenderer
	| previous |
	previous := self shallowCopy.
	self component: aComponent.
	self renderer: aRenderer.
	[ self visit: anObject ]
		ensure: [ self copyFrom: previous ]