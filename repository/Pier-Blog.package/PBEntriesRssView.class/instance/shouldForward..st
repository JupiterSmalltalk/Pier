private
shouldForward: aContext
	(self blog feedForward isNil or: [ self blog feedForward isEmpty ])
		ifTrue: [ ^ false ].
	(self requestContext request fields includesKey: 'noforward')
		ifTrue: [ ^ false ].
	(self requestContext request userAgent notNil and: [ self requestContext request userAgent includesSubstring: 'FeedBurner' caseSensitive: true ])
		ifTrue: [ ^ false ].
	^ true