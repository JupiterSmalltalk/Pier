sample content
addSampleContent
	self blog
		addChild: self blogPostOverview;
		addChild: self blogPostEmbeddingComponents;
		addChild: self blogPostCodeHighlighting;
		addChild: self blogPostWikiMarkup;
		addChild: self blogPostInstallation.
		
	self setAdminUserGroupStartingAtStructure: self blog