rendering-parts
renderStructureLinksOn: html
	html optionGroup
		label: 'Structures';
		with: [ self renderStructureLinks: self context root level: 0 on: html ]