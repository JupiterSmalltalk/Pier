visiting-document
visitHeader: anObject
	html heading level: anObject level; with: [
		html anchor name: anObject hash.
		super visitHeader: anObject ]