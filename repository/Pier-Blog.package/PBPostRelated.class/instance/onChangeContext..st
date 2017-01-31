events
onChangeContext: aContext
	super onChangeContext: aContext.
	self post = self findPost
		ifFalse: [ self refresh ]