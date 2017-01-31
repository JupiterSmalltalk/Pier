private
renderUnknownInternalLinkType: aLink 
	html span
		class: 'pierUnknownInternalLinkType';
		class: self nonEditableCssClasses;
			with: [
				html text: (PRPillarWriter write: aLink) ]