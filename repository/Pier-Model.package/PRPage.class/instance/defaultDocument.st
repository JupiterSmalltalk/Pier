accessing-configuration
defaultDocument
	^ super defaultDocument
		add: (PRParagraph new
			add: (PRText content: 'Edit this page ...');
			yourself);
		yourself