visiting-structure
visitPageMenu: aPage 
	| visitor |
	visitor := PRMostSpecificInternalLinkVisitor new.
	visitor visit: aPage document.
	parent structure: aPage during: [
		PRMenuRenderer new
			copyFrom: parent;
			target: visitor target;
			continue: aPage document
			in: aPage on: html ]