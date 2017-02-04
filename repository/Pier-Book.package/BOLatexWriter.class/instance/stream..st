accessing
stream: aStream
	super stream: aStream.
	latex := BOLatexStream on: aStream.
	items := OrderedCollection new: 1000