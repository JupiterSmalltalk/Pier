rendering
renderPost: aPost on: rss
	| enclosure |
	rss title: aPost title.
	rss link: (self context structure: aPost) url.
	rss comments: (self context structure: aPost) url.
	rss commentRss: (self context
		structure: self blog
		view: PBCommentsRssView) url.
	rss publicationDate: (RRRfc822DateTime
		newDateAndTime: aPost publication).
	aPost tags
		do: [ :each | rss category: each ].
	self renderDescription: aPost document on: rss.
	aPost author isNil
		ifFalse: [ rss creator: aPost author ].
	rss guid
		beNoPermaLink;
		with: aPost uuid.
	(enclosure := aPost enclosure) isNil ifFalse: [
		rss enclosure
			url: enclosure file url;
			length: enclosure file filesize;
			type: enclosure file mimetype ].
	aPost sourceUrl isNil ifFalse: [
		rss source
			url: aPost sourceUrl;
			with: aPost sourceTitle ]