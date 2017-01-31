updating
updateRoot: aHtmlRoot
	super updateRoot: aHtmlRoot.
	aHtmlRoot rss
		title: self blog feedTitle;
		url: (self context
			structure: self blog
			view: PBEntriesRssView)
				url