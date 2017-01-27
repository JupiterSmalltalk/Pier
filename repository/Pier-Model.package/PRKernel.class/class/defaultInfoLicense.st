configuration
defaultInfoLicense
	^ (PRPage named: 'license')
		contents: '!' , PRBasicObject pierLicense;
		yourself