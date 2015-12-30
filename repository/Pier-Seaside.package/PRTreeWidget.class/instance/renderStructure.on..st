rendering-items
renderStructure: aStructure on: html
	html listItem: [
		self renderStructureButton: aStructure on: html.
		self renderStructureLabel: aStructure on: html.
		self renderStructureChildren: aStructure on: html ]