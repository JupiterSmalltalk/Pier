sample content
blogPostInstallation
	^ (PBPost named: 'installation')
		title: 'Installing PierAdmin';
		tags: #('installation' 'metacello');
		publication: TimeStamp now;
		contents: self installationInstructions;
		yourself