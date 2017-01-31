events
onChangeContext: aContext
	super onChangeContext: aContext.
	self blog = self findBlog
		ifFalse: [ self refresh ]