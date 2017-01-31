components
components
	^ OrderedCollection new
		add: self blogArchiveWidget;
		add: self blogCloudWidget;
		add: self blogTagWidget;
		add: self blogPostTickerWidget;
		add: self footerPage;
		add: self googleAnalyticsWidget;
		add: self headerPage;
		add: self poweredPage;
		add: self searchWidget;
		add: self sidebarDocumentWidget;
		add: self siteTitlePage;
		add: self menuPage;
		yourself