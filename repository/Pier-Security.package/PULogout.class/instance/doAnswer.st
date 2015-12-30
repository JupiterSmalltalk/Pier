events
doAnswer
	super doAnswer.
	self successAnswer: (self successAnswer user: nil)