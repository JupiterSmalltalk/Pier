components
searchWidget
	^ searchWidget ifNil: [
		searchWidget := (PRComponent named: 'search')
			prototypeInstance: (PRAjaxSearchWidget new
				filter: (PRStructure withAllConcreteClasses reject: [ :each | each = PRPage or: [ each = PBPost ] ]);
				yourself);
			yourself ]