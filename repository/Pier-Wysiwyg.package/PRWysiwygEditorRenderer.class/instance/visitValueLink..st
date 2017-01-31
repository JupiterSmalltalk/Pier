visiting-document
visitValueLink: aLink 
	html span
		class: 'pierValueLink';
		class: self nonEditableCssClasses;
			with: [
				html text: (PRPillarWriter write: aLink) ]