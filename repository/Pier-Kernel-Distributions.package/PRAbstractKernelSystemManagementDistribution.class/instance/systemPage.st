components
systemPage
	^ systemPage ifNil: [
		systemPage := (PRPage named: 'system')
			localEnvironment: ((PRComponent named: 'contents') "minimal environment"
				prototypeInstance: (PRContentsWidget new
				heading: '';
				yourself));
			contents: '*value:children|link*';
			yourself ]