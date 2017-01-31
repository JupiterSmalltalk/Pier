sample content
bookEntryPierAdminKeyClasses
	| keyClassesStructure |
	keyClassesStructure := (BOPortion named: 'key-classes')
		type: #section;
		title: 'Key classes';
		contents: 'Some key classes: *value:children|link*';
		yourself.
		
	self addClassCommentsSubTreeTo: keyClassesStructure classes: self keyPierAdminClassses.
	
	^ keyClassesStructure