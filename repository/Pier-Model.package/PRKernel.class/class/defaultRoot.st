configuration
defaultRoot
	^ (PRPage named: 'pier')
		addChild: self defaultInfo;
		contents: 'Welcome to Pier, the next generation of a fully extensible content management system implemented in Smalltalk. To read additional information, please consult the *information page>information* or go to the official Pier *web site>http://www.piercms.com*.';
		yourself