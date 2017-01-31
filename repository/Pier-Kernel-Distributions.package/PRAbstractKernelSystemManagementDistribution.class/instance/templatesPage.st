components
templatesPage
	^ templatesPage ifNil: [
		templatesPage := (PRPage named: 'templates')
			contents: '*value:children|link*';
			yourself ]