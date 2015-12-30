visiting-document
visitAnchor: anObject
	html anchor name: (anObject name
		select: [ :each | each isAlphaNumeric ])