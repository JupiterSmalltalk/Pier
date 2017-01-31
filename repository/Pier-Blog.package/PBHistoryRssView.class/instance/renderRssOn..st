rendering
renderRssOn: rss
	rss title: self title; description: self label; link: self url.
	self items do: [ :each | self renderItem: each on: rss ]