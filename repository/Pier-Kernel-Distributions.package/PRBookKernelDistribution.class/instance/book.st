components
book
	^ book ifNil: [
		book := (BOBook named: 'book')
			contents: 'This is a book';
			localEnvironment: self bookTemplate;
			addChild: self tableOfContents;
			addChild: self tableOfFigures;
			addChild: (self introduction
				addChild: self section;
				yourself);
			addChild: self index;
			yourself ]