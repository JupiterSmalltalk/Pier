private
structureInstance
	^ super structureInstance
		addChild: (PRPage named: 'a');
		addChild: (PRPage named: 'b');
		addChild: (PRPage named: 'c');
		yourself