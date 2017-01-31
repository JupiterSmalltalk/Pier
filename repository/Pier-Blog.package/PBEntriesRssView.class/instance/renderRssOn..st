rendering
renderRssOn: rss
	super renderRssOn: rss.
	self posts isEmpty ifTrue: [ ^ self ].
	rss lastBuildDate: (RRRfc822DateTime
		newDateAndTime: self posts last publication).
	self posts do: [ :each |
		rss item: [ self renderPost: each on: rss ] ]