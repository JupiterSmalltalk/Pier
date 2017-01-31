as yet unclassified
visitComponent: aStructure
	"render links to components, rather than embedding them"
	html anchor
		goto: (self context structure: aStructure);
		with: aStructure title