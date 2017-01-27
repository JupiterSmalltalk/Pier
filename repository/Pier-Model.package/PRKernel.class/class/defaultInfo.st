configuration
defaultInfo
	^ (PRPage named: 'information')
		addChild: self defaultInfoIntroduction;
		addChild: self defaultInfoSyntax;
		addChild: self defaultInfoLicense;
		contents: '*value:children|link*';
		yourself