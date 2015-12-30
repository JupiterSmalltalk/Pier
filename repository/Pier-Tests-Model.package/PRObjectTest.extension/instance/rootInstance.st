*pier-tests-model
rootInstance
	^ (PRPage named: 'root')
		addChild: ((PRPage named: 'folder')
			addChild: (PRPage named: 'child');
			addChild: (self structureInstance);
			yourself);
		yourself