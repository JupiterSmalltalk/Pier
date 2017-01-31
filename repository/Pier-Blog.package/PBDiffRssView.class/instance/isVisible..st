testing
isVisible: aContext
	^ aContext command isEdit and: [ super isVisible: aContext ]