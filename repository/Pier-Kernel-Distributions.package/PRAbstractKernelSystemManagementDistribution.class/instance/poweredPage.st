components
poweredPage
	^ poweredByPage ifNil: [
		poweredByPage := (PRPage named: 'poweredby')
			title: 'Powered By';
			contents:  'Powered by *Pier>http://www.piercms.com*';
			yourself ]