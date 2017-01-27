rendering
renderContentOn: html
	| visitor |
	visitor := PRMostSpecificInternalLinkVisitor new
		visit: self document.
	PRMenuRenderer new
		target: visitor target;
		continue: self document 
		in: self on: html