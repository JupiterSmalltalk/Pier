events
onChangeContext: aContext
	super onChangeContext: aContext.
	(structures isEmpty or: [ structures last ~= aContext structure ]) ifTrue: [
		(self isFiltered: aContext structure) ifFalse: [ 
			self removeDuplicates
				ifTrue: [ structures remove: aContext structure ifAbsent: [ ] ].
			structures addLast: aContext structure ] ].
	self maxItems isNil ifFalse: [
		[ self maxItems < structures size ]
			whileTrue: [ structures removeFirst ] ]