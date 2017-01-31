rendering
renderItem: aContext on: rss
	rss item: [
		self renderBasic: aContext on: rss.
		self renderUser: aContext on: rss.
		self renderTags: aContext on: rss.
		self renderBody: aContext on: rss ]