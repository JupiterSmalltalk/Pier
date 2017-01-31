visiting-document
visitIndexLink: aLink 
	html span
		class: 'pierIndexLink';
		class: self nonEditableCssClasses;
			with: [
				html text: (PRPillarWriter write: aLink) ]