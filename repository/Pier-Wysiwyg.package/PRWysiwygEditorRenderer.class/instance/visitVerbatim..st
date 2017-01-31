visiting-document
visitVerbatim: aVerbatim
	html span
		class: 'pierVerbatim';
		class: self nonEditableCssClasses;
			with: [
				html text: (PRPillarWriter write: aVerbatim) ]