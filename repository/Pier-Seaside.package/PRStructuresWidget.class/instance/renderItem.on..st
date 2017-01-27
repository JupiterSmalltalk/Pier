rendering
renderItem: aStructure on: html
	html anchor
		class: 'path' if: (self isPath: aStructure);
		class: 'active' if: (self isActive: aStructure);
		goto: (self context structure: aStructure);
		with: [ html html: (self labelFor: aStructure) ]