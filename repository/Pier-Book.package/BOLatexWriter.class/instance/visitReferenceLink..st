visiting-document
visitReferenceLink: aReferenceLink
	aReferenceLink isBroken ifFalse: [
		(aReferenceLink target isFigure or: [ aReferenceLink target isPublication ])
			ifTrue: [ ^ latex tag: 'autoref'; curly: (self structureLabelFor: aReferenceLink target) ] ].
	^ super visitReferenceLink: aReferenceLink