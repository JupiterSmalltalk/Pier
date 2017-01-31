sample content
bookEntryPierAdminInstallation
	^ (BOPortion named: 'installation')
		type: #section;
		title: 'Pier Admin Installation';
		contents: self installationInstructions;
		yourself