rendering
renderStructure: aStructure on: html
	html anchor
		goto: (self context structure: aStructure);
		with: aStructure absolutePath