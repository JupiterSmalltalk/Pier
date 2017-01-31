components
components
	^ OrderedCollection new
		add: self footerPage;
		add: self googleAnalyticsWidget;
		add: self poweredPage;
		add: self searchWidget;
		add: self notesComponent;
		yourself