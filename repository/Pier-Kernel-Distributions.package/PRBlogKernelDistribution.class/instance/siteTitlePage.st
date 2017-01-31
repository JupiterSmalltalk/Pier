components
siteTitlePage
	^ siteTitlePage ifNil: 
		[ siteTitlePage := (PRPage named: 'sitetitle')
			title: 'Site Title';
			contents: self kernel name;
			yourself ]