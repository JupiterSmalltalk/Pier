as yet unclassified
visitRaw: anObject
	(anObject type isNil or: [ anObject type = 'html' ])
		ifTrue: [ html html: anObject text ]