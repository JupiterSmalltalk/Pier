visiting-document
visitListItem: anObject
	latex tag: 'item'; space.
	super visitListItem: anObject.
	latex lf