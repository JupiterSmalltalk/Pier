initialization
initialize
	super initialize.
	self siteMapSelectCallback: [:id | self generateSiteMapSelect: id ].
	self setExampleText