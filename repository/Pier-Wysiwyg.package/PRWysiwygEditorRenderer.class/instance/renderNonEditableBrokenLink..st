private
renderNonEditableBrokenLink: aLink
	html span
		class: 'broken';
		class: self nonEditableCssClasses;
			with: (PRPillarWriter write: aLink)