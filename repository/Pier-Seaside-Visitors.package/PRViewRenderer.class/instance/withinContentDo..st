accessing
withinContentDo: aBlock
	"Change to the contents mode, e.g. paragraphs are no longer rendered as div but as meaningful XHTML paragraphs."
	
	| previous |
	previous := withinContent. withinContent := true.
	^ aBlock ensure: [ withinContent := previous ]