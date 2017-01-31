rendering
renderComment: aComment on: rss
	| post |
	post := aComment parents reverse
		detect: [ :each | each isPost ].
	rss title: 'Comment on ' , post title.
	rss link: ((self context structure: post)
		url fragment: aComment uuid).
	aComment author isNil
		ifFalse: [ rss creator: aComment author ].
	rss publicationDate: (RRRfc822DateTime
		newDateAndTime: aComment publication).
	rss guid
		beNoPermaLink;
		with: aComment uuid.
	self renderDescription: aComment document on: rss