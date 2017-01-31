rendering
renderRssOn: rss
	super renderRssOn: rss.
	self comments isEmpty ifTrue: [ ^ self ].
	rss lastBuildDate: (RRRfc822DateTime
		newDateAndTime: self comments last publication).
	self comments do: [ :each |
		rss item: [ self renderComment: each on: rss ] ]