updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	self blog isNil ifTrue: [ ^ self ].
	aHtmlRoot rss
		title: self blog feedTitle;
		url: (self context
			structure: self blog
			view: PBEntriesRssView)
				url