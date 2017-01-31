private
renderNonEditableEmbeddedLink: aLink
	html span
		class: 'pierEmbeddedLink';
		class: self nonEditableCssClasses;
			with: (PRPillarWriter write: aLink)