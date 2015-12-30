events
onChangeContext: aContext
	super onChangeContext: aContext.
	self autoCollapse
		ifTrue: [ expanded removeAll: expanded copy ].
	self autoExpand
		ifTrue: [ expanded addAll: aContext structure parents ]